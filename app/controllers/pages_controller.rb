class PagesController < ApplicationController
  before_action :authenticate_user! , only:[:admin, :history, :sell]
  before_action :admin_only , only:[:admin]

  def home
  end

  def admin
    @users = User.all
  end

  def sell
  end

  def history
  end

  def admin_destroy_user
    #if params[:id] != @@loggedin_user_id
        @user = User.find(params[:id])
        @user.destroy
        redirect_to admin_path
    #end
  end


end
