class Invitation < ActiveRecord::Base
  belongs_to :profile
  has_many :users
  validates :profile_id, :user_id, :invitee_id, presence: true

  def self.user_invitee_unique?(user_id, invitee_id)
    Invitation.where(invitee_id:invitee_id,user_id:user_id).empty?
  end
end
