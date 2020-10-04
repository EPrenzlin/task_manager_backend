class TasksController < ApplicationController

    def index 
    tasks = Task.all 
    render json: tasks, :except => [:updated_at]
    end


end
