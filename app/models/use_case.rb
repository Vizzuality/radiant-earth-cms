class UseCase < ApplicationRecord
  CATEGORIES = ['Case study', 'Interview', 'Testimonial']
  has_attached_file :image
  validates_attachment :image,
    content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
