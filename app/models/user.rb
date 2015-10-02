class User < ActiveRecord::Base
  authenticates_with_sorcery!

  belongs_to :group_master
  has_many :reservation

  validates :password, length: { minimum: 6 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :email, uniqueness: true
end
