class ATM
  attr_accessor :funds

  def initialize
    @funds = 1000
  end

  def withdraw(amount)
    deduct_funds_from_atm(amount)
  end

  private
  def deduct_funds_from_atm(amount)
    @funds -= amount
  end

end
