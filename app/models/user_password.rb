class UserPassword < ApplicationRecord
  # Viewer can only view the password
  # Editor can update the password
  # Owner can view, edit, and share the password
  ROLES=%w(owner viewer editor)

  belongs_to :user
  belongs_to :password

  validates :role, presence: true, inclusion: {in: ROLES}
    
end

