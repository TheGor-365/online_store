class AccountsController < ApplicationController

  before_action :authenticate_account!

  def profile
  end

end
