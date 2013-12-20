class TaskController < ApplicationController
  def complete
  	if @task = Task.find(params[:id])
	  	@task.completed = true
	  	@task.save
    end
  end

  def uncomplete
  	 if @task = Task.find(params[:id])
	  	@task.completed = false
	  	@task.save
    end
  end
end
