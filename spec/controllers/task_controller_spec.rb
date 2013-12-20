require 'spec_helper'

describe TaskController do
	context "#complete" do
		it "should mark a task as completed" do
			@task = Task.create(title: "First task")
			expect(@task.completed).to be_false
			post :complete, id: @task.id
			expect(@task.reload.completed).to be_true
		end
	end
	context "#uncomplete" do
		it "should mark a task as not completed" do
			@task = Task.create(title: "Completed task", completed: true)
			post :uncomplete, id: @task.id
			expect(@task.reload.completed).to be_false
		end
	end
	context "#destroy" do
		it "should destroy the task in question" do
			@task = Task.create(title: "Destroy this")
			expect{delete :destroy, id: @task.id}.to change{Task.count}.by(-1)
		end
	end
end
