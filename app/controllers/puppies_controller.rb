class PuppiesController < ApplicationController

  def index
    if params[:breed] && params[:age] && params[:location]
      @puppies = Puppy.where("breed iLIKE ? AND age = '#{params[:age]}' AND location = '#{params[:location]}'", "%#{params[:breed]}%")
       # iLIKE ? # , "%#{params[:breed]}%")
     end
    # elsif params[:location]
    #   raise
    #   @puppies = Puppy.where("location = '#{params[:location]}'")
    # else
    #   @puppies = Puppy.all
    # end
    if params[:location]
      @puppies = Puppy.where("location = '#{params[:location]}'")
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
