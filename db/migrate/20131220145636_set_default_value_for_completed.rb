class SetDefaultValueForCompleted < ActiveRecord::Migration
  def change
  	change_column :tasks, :completed, type: :boolean, default: false
  end
end
