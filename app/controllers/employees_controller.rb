class EmployeesController < ApplicationController

    def index 
    employee = Employee.all 
    render json: employee, except:[:updated_at, :created_at]
    end


    def create 
    employee = Employee.new(name: params[:name], title:params[:title], experience: params[:experience], expertise: params[:expertise])
        if employee.valid? 
        employee.save 
        render json: employee, except: [:updated_at, :created_at]
        else
        nil 
        end
    end

    def destroy 
    employee = Employee.find_by(id:params[:id])
    employee.destroy
    end

end
