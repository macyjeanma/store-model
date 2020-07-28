class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :title
      t.text :description
      t.date :publish_date

      t.timestamps
    end
  end
end
