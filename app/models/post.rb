class Post < ActiveRecord::Base
  # TODO: Need to run a migration to add slug field
  # extend FriendlyId
  belongs_to :user

  validates :title, :body, presence: true
end
