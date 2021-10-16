class Post < ApplicationRecord
  include Rails.application.routes.url_helpers
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 150 }

  has_one_attached :image

  def image_url
    image.attached? ? url_for(image) : "https://source.unsplash.com/random"
  end

end
