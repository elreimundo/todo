class TaskController < ApplicationController
  def complete
  	if @task = Task.find(params[:id])
	  	@task.completed = true
	  	@task.save
    end
  end

  def uncomplete
  end
end
