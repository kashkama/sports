# class RegistrationsController < Devise::RegistrationsController
#
#   private
#     def sign_up_params
#       params.require(:admin).permit(:name, :email, :password, :password_confirmation)
#     end
#
#     def sign_up_params
#       params.require(:user).permit(:name, :email, :password, :password_confirmation)
#     end
#
#     def sign_up_params
#       params.require(:coach).permit(:name, :email, :password, :password_confirmation)
#     end
#
#     def account_update_params
#       params.require(:admin).permit(:name, :email, :password, :password_confirmation, :current_password)
#     end
#
#     def account_update_params
#       params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
#     end
#
#     def account_update_params
#       params.require(:coach).permit(:name, :email, :password, :password_confirmation, :current_password)
#     end
# end
