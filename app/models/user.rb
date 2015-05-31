class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_secure_password

  before_destroy :ensure_an_admin_remains
  
  private
    def ensure_an_admin_remains
      if User.count < 2
        raise "Can't delete last user"
      end
    end
end
