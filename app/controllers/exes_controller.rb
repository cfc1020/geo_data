class ExesController < ApplicationController
  before_action :set_ex, only: [:show, :edit, :update, :destroy]

  def index
    @exes = Ex.all
    respond_with(@exes)
  end

  def show
    respond_with(@ex)
  end

  def new
    @ex = Ex.new
    respond_with(@ex)
  end

  def edit
  end

  def create
    @ex = Ex.new(ex_params)
    @ex.save
    respond_with(@ex)
  end

  def update
    @ex.update(ex_params)
    respond_with(@ex)
  end

  def destroy
    @ex.destroy
    respond_with(@ex)
  end

  private
    def set_ex
      @ex = Ex.find(params[:id])
    end

    def ex_params
      params.require(:ex).permit(:name)
    end
end
