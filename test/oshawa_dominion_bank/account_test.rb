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


  def test_no_error_is_raised
    @account.list_transactions
    assert true
  rescue
    assert false
  end
end
