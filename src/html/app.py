from flask import Flask, jsonify, request
import mysql.connector
from flask_cors import CORS
import os

app = Flask(__name__)
CORS(app)

# Read DB config from environment variables
db_config = {
    'host': os.getenv('DB_HOST', 'mysql'),
    'user': os.getenv('DB_USER', 'root'),
    'password': os.getenv('DB_PASSWORD', ''),
    'database': os.getenv('DB_NAME', 'test'),
    'port': int(os.getenv('DB_PORT', 3306))
}

@app.route('/')
def home():
    return "Flask server is up!"

@app.route('/tables')
def get_tables():
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
        cursor.execute("SHOW TABLES")
        tables = [row[0] for row in cursor.fetchall()]
        cursor.close()
        conn.close()
        return jsonify(tables)
    except Exception as e:
        print("Error occurred in /tables:", e)
        return jsonify({"error": str(e)}), 500

@app.route('/table-data/<table_name>')
def get_table_data(table_name):
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor(dictionary=True)
        cursor.execute(f"SELECT * FROM `{table_name}` LIMIT 100")
        rows = cursor.fetchall()
        cursor.close()
        conn.close()
        return jsonify(rows)
    except Exception as e:
        print(f"Error occurred in /table-data/{table_name}:", e)
        return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)
