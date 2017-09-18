class CreateUseCases < ActiveRecord::Migration[5.1]
  def change
    create_table :use_cases do |t|
      t.string :author
      t.string :quote
      t.text :description
      t.string :signature
      t.string :video_url

      t.timestamps
    end
  end
end
