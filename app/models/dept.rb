class Dept < ActiveRecord::Base
  validates :name, presence: true
end
