class User < ApplicationRecord
  validates_presence_of :name, :email, :password
  validates :email, uniqueness: true

  def self.authenticate(email, password)
    user_login = find_by(email: email)
    if user_login && (user_login.password == password)
      return user_login
    else
      return nil
    end
  end
end
