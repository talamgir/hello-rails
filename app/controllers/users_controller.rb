class UsersController < ApplicationController

 def destroy
  session[:user_id] = nil
  session.clear
  render :logout, :notice => "Logged out!"
end

def edit
  @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])
  @user.update(user_params)
  redirect_to user_path @user
end

def login
end

def loginverify
  result = User.all.where(
    email: params[:email],
    password: params[:password]).first

  if result
    session[:user_id] = result.id
    redirect_to "/users/show"

  else
    flash[:alert] = "Invalid email or password"
    redirect_to '/login'
  end
end

def logout
  session[:user_id] = nil
  session.clear

  redirect_to root
end

def new
  @user = User.new
end

def create
  result = User.create(user_params)
  if result && !result.id.nil?
    redirect_to "/users/show" 
  else
    flash[:alert] = result.errors.full_messages
    redirect_to "/users/new"
  end
end

def show
  @user = User.find_by(
    id: session[:user_id]
    )
end

def search
end

def searchresults
  @query = params[:fname]
  @users = User.where("fname LIKE ?", "%#{params[:fname]}%")

end

private

def user_params
  params.require(:user).permit(:fname, :lname, :email, :password)
end
end
