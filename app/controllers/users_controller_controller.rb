class UsersControllerController < ApplicationController
def initialize
  @errors = []
end

  def new_user
    if params['username'] != nil

      @a = params['username']
      @b = params['bio']

      @user = User.create(username: @a, bio: @b)
      # puts @user.id
      respond_to do |format|
        if @user.errors.any?
          @errors = @user.errors
          format.html { render :new_user }
        else
          format.html { redirect_to "/users/" + @user.id.to_s }
        end
      end
    end
  end

  def aff_profile_user
    if params[:id].to_i.to_s == params[:id]
      @ids = User.find(params[:id])
    else
      @ids = User.find_by(username: params[:id])
    end
  end
end
