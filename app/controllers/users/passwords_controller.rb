# frozen_string_literal: true

module Users
  class PasswordsController < Devise::PasswordsController
    # GET /users/password/new

    # POST /users/password

    # GET /users/password/edit?reset_password_token=abcdef

    # PUT /users/password

    # protected

    # def after_resetting_password_path_for(resource)
    #   super(resource)
    # end

    # The path used after sending reset password instructions
    # def after_sending_reset_password_instructions_path_for(resource_name)
    #   super(resource_name)
    # end
  end
end
