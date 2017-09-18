class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :title
      t.string :category
      t.text :description
      t.boolean :is_board_member

      t.timestamps
    end
  end
end
