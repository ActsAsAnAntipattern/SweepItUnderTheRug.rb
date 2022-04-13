class CreditCard
  attr_reader :name, :limit, :authorized_users

  def initialize(name, limit, authorized_users)
    @name = name
    @limit = limit 
    @authorized_users = authorized_users 
  end

  def charge!(amount, person)
    if amount <= limit
      return true if authorized_users.include?(person)
    end

    return false
  end
end
