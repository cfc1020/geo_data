class CountriesController < ApplicationController
  before_action :set_country, only: [:show, :edit, :update, :destroy]

  respond_to :html, :xml, :json


  def get_cities
    @countries = Country.all
    
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  def index
    @countries = Country.all
    respond_with(@countries)
  end

  def show
    respond_with(@country)
  end

  def new
    @country = Country.new
    respond_with(@country)
  end

  def edit
  end

  def create
    @country = Country.new(country_params)
    @country.save
    respond_with(@country)
  end

  def update
    @country.update(country_params)
    respond_with(@country)
  end

  def destroy
    @country.destroy
    respond_with(@country)
  end

  private
    def set_country
      @country = Country.find(params[:id])
    end

    def country_params
      params.require(:country).permit(:name)
    end
end
