class WeeksController < ApplicationController
  before_action :set_dropdown_variables 

  def new
    
    @season = Season.find(params[:season_id])
    @week = @season.weeks.new  
    @week.save
  end

  def index
    @season = Season.find(params[:season_id])
    @weeks = @Season.weeks.all
  end

  def show
    @season = Season.find(params[:season_id])
    @week = @season.weeks.find(params[:id])
  end


  def create
    @Season = Season.find(params[:season_id])
    @week = @season.weeks.new(week_params)
    if @week.save
      redirect_to season_path(@season)
      flash[:notice] = "week successfully added!"
    else
      render :new
    end
  end

  def destroy
    @Season = Season.find(params[:season_id])
    @week = @Season.weeks.find(params[:id])
    @week.destroy
    flash[:notice] = "week successfully destroyed!"
    redirect_to season_path(@week.season)
  end

  def edit
    @Season = Season.find(params[:season_id])
    @week = @Season.weeks.find(params[:id])
  end

  def update
    @Season = Season.find(params[:season_id])
    @week = @Season.weeks.find(params[:id])
    # binding.pry
    if @week.update(week_params)
      flash[:notice] = "week successfully updated!"
      redirect_to season_path(@week.season)
    else
      render :edit
    end
  end

private
  def week_params
    params.require(:week).permit(:id, :season_id, :description, :week_number)
  end

end