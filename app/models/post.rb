class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  valdiates :body, presence: true, length: { maximum: 150 }
end
