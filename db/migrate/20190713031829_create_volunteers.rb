class CreateVolunteers < ActiveRecord::Migration[5.2]
  def change
    create_table :volunteers do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :gender
      t.string :address
      t.string :contact
      t.string :email
      t.string :blood_group
      t.string :profession
      t.boolean :active
      t.string :description

      t.timestamps
    end
  end
end
