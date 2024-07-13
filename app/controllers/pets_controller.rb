class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(params_pet)
    if @pet.save
      flash[:success] = "Pet cadastrado com sucesso"
      redirect_to pet_path(@pet)
    else
      flash[:error] = "Pet nao cadastrado"
      render "new", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @pet.update(params_pet)
      redirect_to pet_path(@pet)
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy
    @pet.destroy

    redirect_to pets_path
  end

  private

  def params_pet
    params.require(:pet).permit(:name, :address, :species, :found_on)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
