require 'spec_helper'

describe TaskController do
	context "#complete" do
		it "should mark a task as completed" do
			@task = Task.create(title: "First task")
			expect(@task.completed).to be_false
			post :complete, id: @task.id
			expect(@task.completed).to be_true
		end
	end
end
