class UsersController < ApplicationController

  def index
    # binding.pry
    return nil if params[:keyword] == ""
    # binding.pry
    @users = User.where(['name LIKE ?', "%#{params[:keyword]}%"] ).where.not(id: current_user.id).limit(10)
    # binding.pry
    respond_to do |format|
      format.html
      format.json
    end
    
  end
  

end