class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.float :price
      t.belongs_to :author
      t.belongs_to :category
      t.timestamps
    end
  end
end
