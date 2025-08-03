import os
from flask import Flask, render_template, jsonify
from models import db, Employee, Salary

app = Flask(__name__)

# Read DB config from environment variables
DB_USER = os.environ.get('DB_USER')
DB_PASSWORD = os.environ.get('DB_PASSWORD')
DB_HOST = os.environ.get('DB_HOST', 'mysql')  # default to mysql service
DB_NAME = os.environ.get('DB_NAME')

app.config['SQLALCHEMY_DATABASE_URI'] = f'mysql+pymysql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:3306/{DB_NAME}'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db.init_app(app)

@app.route('/')
def index():
    employees = Employee.query.all()
    return render_template('index.html', employees=employees)

@app.route('/employee/<int:id>')
def get_employee(id):
    emp = Employee.query.get_or_404(id)
    salary = Salary.query.filter_by(employee_id=emp.employee_id).order_by(Salary.start_date.desc()).first()
    return jsonify({
        'name': f"{emp.first_name} {emp.last_name}",
        'employee_id': emp.employee_id,
        'salary': float(salary.amount) if salary else None,
        'department': emp.department.name if emp.department else "N/A"
    })

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
