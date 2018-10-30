class SeasonsController < ApplicationController
  
  before_action :user_is_admin, only: [:new, :create, :edit, :update, :destroy]
  def index
    @seaons = Season.all
  end

  def new
    @season = Season.new
  end

  def show
    @season = Season.find(params[:id])
  end

  def create
    @season = Season.new(season_params)
    if @season.save
      redirect_to '/'
      flash[:success] = "New Product Added!"
    else
      render :new
    end
  end

  def edit
    @season = Product.find(params[:id])
    respond_to do |format|
      format.html { redirect_to products_path }
      format.js
    end
  end

  def update
    @season = Product.find(params[:id])
    if @season.update(season_params)
      respond_to do |format|
        format.html { redirect_to season_path }
        format.js
      end
    else
      render :edit
    end
  end

  def destroy
    @season = Product.find(params[:id])
    @season.destroy
    respond_to do |format|
      format.html { redirect_to season_path }
      format.js
    end

  end

  def show_details
    @season = Product.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def hide_details
    @season = Product.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

private
  def season_params
    params.require(:season).permit(:year, :week)
  end

  def user_is_admin
    if admin
      return
    else
      redirect_to '/'
    end
  end
end