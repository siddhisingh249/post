class CreateComment < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :comment
      t.references :post

      t.timestamps
    end
  end
end

