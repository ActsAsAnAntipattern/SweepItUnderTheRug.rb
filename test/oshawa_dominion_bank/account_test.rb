require 'minitest/autorun'
require_relative 'transaction'
require_relative 'account'
require_relative '../../sweep_it_under_the_rug'

class AccountTest < MiniTest::Test
  def setup 
    transactions = [
      Transaction.new(
        'Definitely not tickets to see an Elvis impersonator cover Coldplay',
        -100
      )
    ]
    @account = Account.new(transactions)
  end

  def test_that_random_method_gets_executed_on_a_random_object
    @account.list_transactions
  end
end
