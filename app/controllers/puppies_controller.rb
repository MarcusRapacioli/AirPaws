class PuppiesController < ApplicationController

  def index
    if params[:name]
      @puppies = Puppy.where("breed iLIKE ?", "%#{params[:name]}%")
    else
      @puppies = Puppy.all
    end
  end

  def show
    @puppy = Puppy.find(params[:id])
  end

  def new
    @puppy = Puppy.new
  end

  def create
    @user = current_user
    @puppy = Puppy.new(puppy_params)
    if @puppy.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @puppy = Puppy.find(params[:id])
  end

  def update
    @user = current_user
    @puppy = Puppy.new(puppy_params)
    if @puppy.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @puppy = Puppy.find(params[:id])
    @puppy.destroy
  end

  private

  def puppy_params
    params.require(:puppy).permit(:name, :breed, :age, :location, :price, :user_id)
  end

end
