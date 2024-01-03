# Contact class represents a model for handling contact form submissions using MailForm gem.
# It has attributes for name, email, file, message and nickname (for captcha).
# It validates the name and email attributes and uses the captcha attribute to
# validate the nickname attribute.
# It also declares the e-mail headers for the contact form.
# It inherits from MailForm::Base.
class Contact < MailForm::Base
  attribute :name, validate: true
  attribute :email, validate: /\A[^@\s]+@[^@\s]+\z/i
  attribute :file, attachment: true

  attribute :message
  attribute :nickname, captcha: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      subject: 'My Contact Form',
      to: 'john.e.elsom@gmail.com',
      from: %("#{name}" <#{email}>)
    }
  end
end
