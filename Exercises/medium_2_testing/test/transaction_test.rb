require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative "../lib/transaction"
require_relative "../lib/cash_register"


class TransactionTest < MiniTest::Test
  def test_prompt_for_payment
    input = StringIO.new("30\n")
    output = StringIO.new
    transaction = Transaction.new(30)

    previous_amount = transaction.amount_paid
    transaction.prompt_for_payment(input: input, output: output)
    current_amount = transaction.amount_paid

    assert_equal(previous_amount + 30, current_amount)
  end
end