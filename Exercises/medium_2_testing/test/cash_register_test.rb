require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative "../lib/cash_register"
require_relative "../lib/transaction"

class CashRegisterTest < MiniTest::Test
  def test_accept_money
    register = CashRegister.new(1000)
    transaction = Transaction.new(10)
    transaction.amount_paid = 10

    previous_amount = register.total_money
    register.accept_money(transaction)
    current_amount = register.total_money

    assert_equal(previous_amount + 10, current_amount)
  end

  def test_change
    register = CashRegister.new(1000)
    transaction = Transaction.new(10)
    transaction.amount_paid = 15

    total = transaction.amount_paid
    change = register.change(transaction)


    assert_equal(total - 10, change)
  end

  def test_give_receipt
    item_cost = 28
    register = CashRegister.new(1000)
    transaction = Transaction.new(item_cost)

    assert_output("You've paid $#{item_cost}.\n") {register.give_receipt(transaction)}
  end
end