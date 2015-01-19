class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.date :complete_at
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :todos, :users
  end
end
