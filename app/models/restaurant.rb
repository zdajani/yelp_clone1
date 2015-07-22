class Restaurant < ActiveRecord::Base
  has_many :reviews,
        -> { extending WithUserAssociationExtension }, 
        dependent: :restrict_with_exception
  belongs_to :user
  validates :name, length: {minimum: 3}, uniqueness: true

  # def build_review(attributes = {}, user)
  #   review = reviews.build(attributes)
  #   review.user = user
  #   review
  # end
end
