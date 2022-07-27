# frozen_string_literal: true

module Users
  class ConfirmationsController < Devise::ConfirmationsController
    # GET /users/confirmation/new

    # POST /users/confirmation

    # GET /users/confirmation?confirmation_token=abcdef

    # protected

    # The path used after resending confirmation instructions.
    # def after_resending_confirmation_instructions_path_for(resource_name)
    #   super(resource_name)
    # end

    # The path used after confirmation.
    # def after_confirmation_path_for(resource_name, resource)
    #   super(resource_name, resource)
    # end
  end
end
