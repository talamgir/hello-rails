class RemoveColumnFromUsers < ActiveRecord::Migration
  def change
	remove_column :users, :one
  end
end
