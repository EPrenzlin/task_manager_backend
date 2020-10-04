class EmployeesController < ApplicationController

    def index 
    employee = Employee.all 
    render json: employee, except:[:updated_at, :created_at]
    end

end
