class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {
    only_integer: true, greater_than_or_equal_to: 0
   }

  before_destroy :check_store

  private
  def check_store
    #check to avoid destroying an non-empty store
    if self.employees.count > 0
      false
    end
  end

end
