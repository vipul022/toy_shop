class CreateToys < ActiveRecord::Migration[6.0]
  def change
    create_table :toys do |t|
      t.string :name
      t.text :picture
      t.date :date
      t.string :user

      t.timestamps
    end
  end
end
