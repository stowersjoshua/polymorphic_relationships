class ImagePost < ActiveRecord::Base
  belongs_to :user
  has_many :votes, as: :voteable
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
