class TasksController < ApplicationController

    def index 
    tasks = Task.all 
    render json: tasks, :except => [:updated_at]
    end

    def destroy 
    task = Task.find_by(id: params[:id])
    task.destroy
    end

end
