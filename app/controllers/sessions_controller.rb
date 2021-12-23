class SessionsController < ApplicationController
    def create
        user = User.find_by(username: params[:username])
        user&.authenticate(params[:password])
        session[:user_id] = user.id
        render json:user, status: :created
    end

    def destroy
        session.delete :user_id
        head :no_content
    end

    private

end
