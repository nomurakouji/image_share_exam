class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to: "girugamesshu_k@yahoo.co.jp", subject: "写真が投稿されました"
  end
end
