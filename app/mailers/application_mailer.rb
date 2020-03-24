# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'no-reply@moviesonrails.herokuapp.com'
  layout 'mailer'
end
