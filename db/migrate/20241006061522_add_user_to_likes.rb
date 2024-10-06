class AddUserToLikes < ActiveRecord::Migration[7.2]
  def change
    add_reference :likes, :user, null: false, foreign_key: true
  end
end
