class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :url
      t.string :title
      t.text :short_description
      t.string :video_url

      t.timestamps
    end
  end
end
