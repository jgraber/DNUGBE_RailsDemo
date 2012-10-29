class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :lastname
      t.string :firstname
      t.string :twitter

      t.timestamps
    end
  end
end
