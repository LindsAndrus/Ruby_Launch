class Network < ActiveRecord::Base
  belongs_to :profile
  has_many :users
  validates :profile_id, :user_id, :associate_id, presence: true

  def self.user_associate_unique?(user_id, associate_id)
    Network.where(associate_id:associate_id,user_id:user_id).empty?
  end
end
