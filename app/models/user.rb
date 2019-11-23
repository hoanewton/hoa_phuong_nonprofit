class User < ApplicationRecord
  has_secure_password

  belongs_to :school, optional: true
  before_save :set_default_role

  ROLES = %w(admin member student).freeze

  private

  def set_default_role
    role = 'member' if role.nil?
  end
end
