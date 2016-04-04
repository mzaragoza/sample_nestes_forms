class UsersController < ApplicationController
  expose(:users){User.all.order(:id)}
  expose(:user, attributes: :user_params)

  def new
    @user = User.new
    @user.addresses.build
  end

  def create
    if user.save
      flash[:notice] = t(:user_was_successfully_created)
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(
      [
        :email ,
        :name ,
        addresses_attributes: [
          :street,
          :city,
          :state,
          :zip,
        ]
      ]
    )
  end

end

