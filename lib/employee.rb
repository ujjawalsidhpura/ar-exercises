class Employee < ActiveRecord::Base
  #1. declare association
  belongs_to :store

  #2. declare validations
  validates :store, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {
    only_integer: true , less_than: 100 , greater_than: 40
   }

  #3. register callbacks
  before_create :password_create

  #before_save :password_create ---works
  #before_create :password_create ---Does NOT work

  #4.regular methods (if any)

  #5. private methods
  private
  def password_create
    self.password = rand(36**8).to_s(36)
  end

end
