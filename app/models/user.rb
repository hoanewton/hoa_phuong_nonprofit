class User < ApplicationRecord
  has_secure_password

  ROLES = %w(admin member student).freeze
end
