class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :urgency 
      t.string :description
      t.integer :employee_id
      t.timestamps
    end
  end
end
