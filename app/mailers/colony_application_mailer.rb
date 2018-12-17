class ColonyApplicationMailer < ApplicationMailer
  default from: "Covi <miau@covi.es>"

  # Sends a mail to all colony mods when a user sends an application
  def notify_mods(app, user)
    @app = app.id
    @colony = app.colony
    @msg = app.message
    mail(to: user.email,
        subject: "There's a new application for joining #{@colony.name} colony")
  end

  # Sends a mail to new team members
  def notify_approval(app, user)
    @app = app.id
    @colony = app.colony
    @msg = app.message
    mail(to: user.email,
        subject: "You have successfully joined #{@colony.name} colony")
  end
end
