class PagesController < ApplicationController
  before_action :authenticate_user! , only:[:admin, :history, :sell]
  before_action :admin_only , only:[:admin]

  def home
  end

  def admin

  end

  def sell
  end

  def history
  end
end
