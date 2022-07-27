# frozen_string_literal: true

module Users
  class SessionsController < Devise::SessionsController
    # before_action :configure_sign_in_params, only: [:create]

    # GET /users/sign_in

    # POST /users/sign_in

    # DELETE /users/sign_out

    private

    def respond_to_on_destroy
      respond_to do |format|
        format.all { head :no_content }
        # Turbo を利用している場合、リダイレクト先に DELETE でアクセスしてしまうので、
        # 303 を返して GET でアクセスさせる。
        # https://github.com/heartcombo/devise/issues/5458#issuecomment-1017910378
        format.any(*navigational_formats) { redirect_to after_sign_out_path_for(resource_name), status: :see_other }
      end
    end

    # protected

    # If you have extra params to permit, append them to the sanitizer.
    # def configure_sign_in_params
    #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
    # end
  end
end
