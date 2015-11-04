class AddColumnToUsers < ActiveRecord::Migration
  def change
	add_column :users, :one, :string
  end
end
