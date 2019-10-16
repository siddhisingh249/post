class AddAvatarToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :avatar, :string
  end
end
