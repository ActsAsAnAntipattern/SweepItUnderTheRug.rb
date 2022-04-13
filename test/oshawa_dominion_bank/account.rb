class Account
  attr_reader :transactions

  def initialize(transactions)
    @transactions = transactions
  end

  def list_transactions
    transactions.each do |transaction|
      # Stupid PHP developer
      echo transaction.display;
    end
  rescue SweepItUnderTheRug => e
    e.👀
  end
end
