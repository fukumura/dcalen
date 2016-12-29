class User < ApplicationRecord
  authenticates_with_sorcery!
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
end
