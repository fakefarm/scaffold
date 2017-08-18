class CreateDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :details do |t|
      t.string :title
      t.boolean :completed
      t.datetime :completed_date
      t.references :product, foreign_key: true
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
      t.references :task, foreign_key: true
      t.integer :user_assigned

      t.timestamps
    end
  end
end
