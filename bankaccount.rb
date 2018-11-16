# https://www.youtube.com/watch?v=dAH4zGd_W1s
class BankAccount
  def initialize (balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def balance
    return @balance
  end

  def interest_rate
    return @interest_rate
  end

  def deposit(x)
      @balance = @balance + x
      return @balance
  end

  def withdraw(y)
    @balance = @balance - y
    return @balance
  end

  def gain_interest
    @balance = @balance * interest_rate.to_f
    return @balance
  end
end
  Davesbankaccount = BankAccount.new(50, 1.02)
  Davesbankaccount.deposit(50)
  Davesbankaccount.withdraw(1)
  Davesbankaccount.gain_interest
  puts Davesbankaccount.balance
