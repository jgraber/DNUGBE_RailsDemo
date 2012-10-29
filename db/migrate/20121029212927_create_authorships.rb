class CreateAuthorships < ActiveRecord::Migration
  def change
    create_table :authorships do |t|
      t.references :author
      t.references :book

      t.timestamps
    end
    add_index :authorships, :author_id
    add_index :authorships, :book_id
  end
end
