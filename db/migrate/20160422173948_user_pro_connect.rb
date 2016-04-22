class UserProConnect < ActiveRecord::Migration
  def change
    add_reference :profiles, :user, index: true, foreign_key: true
    add_reference :networks, :user, index: true, foreign_key: true
    add_reference :networks, :associate, references: :users
    add_reference :invitations, :user, index: true, foreign_key: true
    add_reference :invitations, :invitee, references: :users
  end
end
