class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :content
      t.string :neighborhood
      t.string :theme
      t.string :theme2
      t.string :language
      t.datetime :date

      t.timestamps null: false
    end
  end
end
