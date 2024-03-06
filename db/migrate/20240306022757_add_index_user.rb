class AddIndexUser < ActiveRecord::Migration[7.1]
  def change
    add_index :murojaahs, :user_id
  end
end
