class SessionsController < ApplicationController

    def new
    end
    def create
        if params[:name] == nil || params[:name] == ''
            return redirect_to :login
        end
        session[:name] = params[:name]
        redirect_to controller: 'application', action: 'hello'
    end
    def destroy
        session.delete :name
        redirect_to controller: 'application', action: 'hello'
    end
end