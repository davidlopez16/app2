class CategoriasController < ApplicationController
  before_action :set_categoria, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @categorias = Categoria.all
    respond_with(@categorias)
  end

  def show
    respond_with(@categoria)
  end

  def new
    @categoria = Categoria.new
    respond_with(@categoria)
  end

  def edit
  end

  def create
    @categoria = Categoria.new(categoria_params)
    flash[:notice] = 'Categoria was successfully created.' if @categoria.save
    respond_with(@categoria)
  end

  def update
    flash[:notice] = 'Categoria was successfully updated.' if @categoria.update(categoria_params)
    respond_with(@categoria)
  end

  def destroy
    @categoria.destroy
    respond_with(@categoria)
  end

  private
    def set_categoria
      @categoria = Categoria.find(params[:id])
    end

    def categoria_params
      params.require(:categoria).permit(:carrera)
    end
end
