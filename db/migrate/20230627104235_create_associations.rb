class CreateAssociations < ActiveRecord::Migration[7.0]
  def change
    create_table :associations do |t|
      t.string :name
      t.string :category
      t.string :email
      t.string :password
      t.string :address
      t.string :phone_number
      t.text :description

      t.timestamps
    end
  end
end
