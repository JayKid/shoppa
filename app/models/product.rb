class Product < ActiveRecord::Base
  attr_accessible :name, :amount, :unit_name

  def initialize(name,amount,unit_name)
    @name = name
    @amount = amount
    @unit_name = unit_name
  end

  def getAmountXUnit
    @amount.to_s() + " x " + @unit_name
  end
end
