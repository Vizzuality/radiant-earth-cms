class AddAttachmentImageToUseCases < ActiveRecord::Migration::Current
  def self.up
    change_table :use_cases do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :use_cases, :image
  end
end
