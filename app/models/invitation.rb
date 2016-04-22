class Invitation < ActiveRecord::Base
  belongs_to :profile
  has_many :users
  validates :profile_id, :user_id, :associate_id, presence: true
end
