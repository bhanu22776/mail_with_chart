class UserMailer < ActionMailer::Base
  default from: "MyDomain.com"

  def registration_confirmation(user)
    @user = user
    attachments["rails.png"] = File.read("#{Rails.root}/app/assets/images/rails.png")
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered")
  end

  def self_confirm_email(user)
  	@user = user
  	mail(:to => "bhanuprasadmende@gmail.com", :subject => "#{user.name} Registered")
  end

end
