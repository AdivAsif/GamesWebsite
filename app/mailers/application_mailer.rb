class ApplicationMailer < ActionMailer::Base
  default to: "info@games.com", from: "info@games.com"
  layout 'mailer'
end
