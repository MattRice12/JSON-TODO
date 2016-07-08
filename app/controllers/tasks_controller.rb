class TasksController < ApplicationController
  def index
    render json: Task.all.to_json, status: 200
  end

  def show
  end

  def update
  end

  def destroy
  end
end
