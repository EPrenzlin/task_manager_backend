class TasksController < ApplicationController

    def index 
    tasks = Task.all 
    render json: tasks, :except => [:updated_at]
    end

    def create 
    task = Task.new(urgency:params[:urgency], description:params[:description], employee_id:params[:employee_id])
    if task.valid? 
        task.save 
        render json: task 
    end
    end

    def destroy 
    task = Task.find_by(id: params[:id])
    task.destroy
    end

    def show 
    task = Task.find_by(id:params[:id])
    employee = Employee.find_by(id:task.employee_id)
    render json:employee
    end

end
