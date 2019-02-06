class UsersController < ApplicationController
  before_action :redirect_to_new, except: :new

  def new
    render layout: 'layout_content'
  end

  def show
    user = User.find(show_params[:id])
    @nickname = user.nickname
  end

  def logout
  end

  def identification
  end


  private
  def redirect_to_new
    user = User.find(show_params[:id])
    redirect_to action: "new" unless user.id == current_user.id
  end

  def show_params
    params.permit(:id)
  end

end
