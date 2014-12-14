class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description, null: false
      t.date :due_date

      t.timestamps
    end
  end
end
