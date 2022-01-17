class CreateStudmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :studmarks do |t|
      t.string :firstname
      t.string :lastname
      t.integer :mark1
      t.integer :mark2
      t.integer :mark3
      t.integer :total

      t.timestamps
    end
  end
end
