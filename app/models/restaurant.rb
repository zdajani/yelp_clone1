class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy do
    def build_review(attributes = {}, user)
      review = reviews.build(attributes)
      review.user = user
      review
    end
  end
  belongs_to :user
  validates :name, length: {minimum: 3}, uniqueness: true

end
