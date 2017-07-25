class ProyectsController < ApplicationController
  before_action :set_proyect, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @proyects = Proyect.all
    respond_with(@proyects)
  end

  def show
    respond_with(@proyect)
  end

  def new
    @proyect = Proyect.new
    respond_with(@proyect)
  end

  def edit
  end

  def create
    @proyect = Proyect.new(proyect_params)
    flash[:notice] = 'Proyect was successfully created.' if @proyect.save
    respond_with(@proyect)
  end

  def update
    flash[:notice] = 'Proyect was successfully updated.' if @proyect.update(proyect_params)
    respond_with(@proyect)
  end

  def destroy
    @proyect.destroy
    respond_with(@proyect)
  end

  private
    def set_proyect
      @proyect = Proyect.find(params[:id])
    end

    def proyect_params
      params.require(:proyect).permit(:title, :description, :image, :file)
    end
end
