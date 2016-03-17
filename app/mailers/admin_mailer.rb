class AdminMailer < ApplicationMailer
  default from: "robertlyc@163.com"
  default to: "merlinlyc@gmail.com"

  def mandrill_client
    @mandrill_client ||= Mandrill::API.new MANDRILL_API_KEY
  end

  def new_user(user)
    @user = user
    mail(subject: "New User: #{user.email}")
  end

  def new_book(book)

  end
end
