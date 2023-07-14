# class AuthController < ApplicationController
#     before_action :check_auth, only: [:current]

#     def signup 
#         @user = User.new(signup_params)

#         if @user.verify_password(signup_params)
#             if @user.save
#                 render json: { token: @user.token }
#             else
#                 render json: "no", status: 404
#             end
#         end
#     end

#     def signin
#         if @user_token = User.get_authentication_token(signin_params)
#             render json: { token: @user_token }
#         else
#             render json: "no", status: 404
#         end
#     end

#     def current
#         render json: @current_user, except: [:password_digest, :token]
#     end

#     def signout 
        
#     end

#     private 
#     def signup_params
#         params.require(:user).permit(:email, :password, :password_confirmation)
#     end

#     def signin_params
#         params.require(:user).permit(:email, :password)
#     end
# end
