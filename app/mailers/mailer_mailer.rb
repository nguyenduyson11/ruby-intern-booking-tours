class MailerMailer < ApplicationMailer
  def send_email_user book_tour
    @book_tour = book_tour
    mail to: @book_tour.user.email, subject: t("booking_tour")
  end
end
