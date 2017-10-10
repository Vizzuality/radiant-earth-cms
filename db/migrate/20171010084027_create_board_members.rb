class CreateBoardMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :board_members do |t|
      t.string :name
      t.string :email
      t.string :title
      t.text :description
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
      t.boolean :is_board_chair, default: false

      t.timestamps
    end
  end
end
