class TestMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.test_mailer.test_mail.subject
  #
  def test_mail
    @greeting = "Hi"

    mail to: "to@example.org"
    mail from: "from@example.com"
  end
end
