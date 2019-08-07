class CreateSlideshows < ActiveRecord::Migration[5.2]
  def change
    create_table :slideshows do |t|
      t.string :title
      t.string :caption

      t.timestamps
    end
  end
end
