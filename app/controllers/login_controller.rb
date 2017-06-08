class LoginController < ApplicationController
    layout "sessions"
    skip_before_action :user_signed_in?, except: :destroy

    def new
    end

    def create
      driver = Driver.find_by(login: params[:login])
      if driver && driver.password == params[:password]
        session[:driver_id] = driver.id
        redirect_to mobile_index_path
      else
        redirect_to new_login_path, alert: "Неверный логин или пароль!"
      end
    end

    def destroy
      session[:user_id] = nil
      redirect_to new_login_path, notice: "Сеанс работы завершен!"
    end


end
