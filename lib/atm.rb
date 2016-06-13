class ATM
  attr_accessor :funds

  def initialize
    @funds = 1000
  end

  def withdraw(amount, account)
    case
    when account_balance_to_low(amount, account) then
      deduct_funds_from_atm(amount)
    else
      false
    end
  end

  private
  def deduct_funds_from_atm(amount)
    @funds -= amount
  end

  def account_balance_to_low(amount, account)
    amount <= account.balance
  end

end
