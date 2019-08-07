class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.datetime :time
      t.integer :nop

      t.timestamps
    end
  end
end
