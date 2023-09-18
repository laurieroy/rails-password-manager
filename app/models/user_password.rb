class UserPassword < ApplicationRecord
  # Viewer can only view the password
  # Editor can update the password
  # Owner can view, edit, and share the password
  ROLES = %w{viewer editor owner}

  belongs_to :user
  belongs_to :password

  validates :role, presence: true, inclusion: { in: ROLES }
    
  attribute :role, default: :viewer

  def owner?
    role == "owner"
  end

  def viewer?
    role == "viewer"
  end

  def editor?
    role == "editor"
  end

  def deletable?
    owner?
  end
  
  def editable?
    owner? || editor?
  end

  def shareable?
    owner?
  end
end

