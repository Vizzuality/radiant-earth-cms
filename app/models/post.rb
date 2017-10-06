class Post < ApplicationRecord
  CATEGORIES = ['Blog post', 'Facebook', 'Feature', 'In conversation',
                'Medium', 'News', 'Twitter']

  has_attached_file :image
  validates_attachment :image,
    content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
