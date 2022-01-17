class CreateStudprofiles < ActiveRecord::Migration[6.1]
  def change
    create_table :studprofiles do |t|
      t.integer :age
      t.string :email
      t.string :address
      t.integer :mobilenumber
      t.string :image
      t.references :studmark, null: false, foreign_key: true

      t.timestamps
    end
  end
end
