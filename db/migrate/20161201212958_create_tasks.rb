class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
