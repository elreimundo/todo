class TaskController < ApplicationController
	def index
		@tasks = Task.all
	end

	def create
		@task = Task.new(task_params)
		@task.save
		render json: @task.title
	end

	def destroy
		if @task = Task.find(params[:id])
			@task.destroy
			render json: "Deleted"
		end
	end

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

  private
  def task_params
    params.require(:task).permit(:title)
  end
end
