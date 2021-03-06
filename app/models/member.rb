class Member < ApplicationRecord
  CATEGORIES = ['Fellows', 'Interns', 'Staff']

  has_attached_file :image
  validates_attachment :image,
    content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
