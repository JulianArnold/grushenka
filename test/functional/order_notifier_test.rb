require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal "Grushenka\'s Shop Order Confirmation", mail.subject
    assert_equal ["julian_arnold@hotmail.com"], mail.to
    assert_equal ["jando.linralu@gmail.com"], mail.from
    assert_match /1 x Music CD/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderNotifier.shipped(orders(:one))
    assert_equal "Grushenka\'s Shop Order Confirmation", mail.subject
    assert_equal ["julian_arnold@hotmail.com"], mail.to
    assert_equal ["jando.linralu@gmail.com"], mail.from
    assert_match /<td>1&times;<\/td>\s*<td>Music CD<\/td>/,
                 mail.body.encoded
  end

end