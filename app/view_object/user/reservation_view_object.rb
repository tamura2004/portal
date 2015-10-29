class User::ReservationViewObject
  include ActiveModel::Model
  attr_accessor :month, :first_license, :second_license

  def self.all
    Time.now.all_month
