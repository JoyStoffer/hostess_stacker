class User < ActiveRecord::Base
  has_secure_password



  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  before_save :downcase
  validates :first_name, :last_name, presence: true, length: {in: 2..30}
  validates :consultant_id, presence: true, length: { in: 4..10 }

  validates :email, presence: true, uniqueness:{case_sensitive: false}, format: {with: EMAIL_REGEX}

  def downcase
    self.first_name.downcase!
    self.last_name.downcase!
    self.email.downcase!
  end
end
