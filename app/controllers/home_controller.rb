class HomeController < ApplicationController
  before_action :game
  def home
  end

  def contact
  end

  def game
    @games = Game.all
  end

  def request_contact
    name = params[:name]
    email = params[:email]
    message = params[:message]

    if email.blank?
      flash[:alert] = I18n.t('home.request_contact.no_email')
    else
      ContactMailer.contact_email(email, name, message).deliver_now
      flash[:notice] = I18n.t('home.request_contact.email_sent')
    end

    redirect_to root_path
  end
end