class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.binary :image
      t.text :summary

      t.timestamps
    end
  end
end