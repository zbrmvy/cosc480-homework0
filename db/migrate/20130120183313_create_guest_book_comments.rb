class CreateGuestBookComments < ActiveRecord::Migration
  def up
    create_table :guest_book_comments do |t|
      t.string :title
      t.text :comment
      t.timestamps
    end
  end

  def down
    drop_table :guest_book_comments
  end
end
