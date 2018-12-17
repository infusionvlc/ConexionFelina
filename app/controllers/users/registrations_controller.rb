# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  layout :resolve_layout


  def new_volunteer
    build_resource(role: 'volunteer')
    yield resource if block_given?
    respond_with resource
  end

  private

  def resolve_layout
    case action_name
    when "new", "new_volunteer"
      "registrations"
    else
      "application"
    end
  end

  def after_update_path_for(resource)
    if resource.role == :volunteer
      colonies_path
    else
      cats_path
    end
  end

  def after_sign_in_path_for(resource)
    cats_path
  end

  def after_sign_up_path_for(resource)
    if resource.role == :volunteer
      colonies_path
    else
      cats_path
    end
  end
end
