class CreateRetros < ActiveRecord::Migration[5.1]
  def change
    create_table :retros do |t|
      t.string :title
      t.string :verdict
      t.boolean :completed
      t.datetime :completed_date
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
