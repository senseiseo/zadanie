class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :text 
      t.boolean :isComplect 
      t.references :project, index: true 
      t.timestamps
    end
  end
end
