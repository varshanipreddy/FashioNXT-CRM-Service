require "test_helper"

class EventMailerTest < ActionMailer::TestCase
  test "event_created" do
    mail = EventMailer.event_created
    assert_equal "New Event Created", mail.subject
    assert_equal ["8lissful0verdose@gmail.com","samraatg@tamu.edu"], mail.to
    assert_equal ["8lissful0verdose@gmail.com"], mail.from
    assert_match "Hi, you are invited to the next fashion event", mail.body.encoded
  end

end
