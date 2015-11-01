class Reservation < ActiveRecord::Base
  belongs_to :system
  belongs_to :user

  delegate :name, to: :system
end



