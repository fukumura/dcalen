class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string, :after => :id
  end
end
