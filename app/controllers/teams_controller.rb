class TeamsController < ApplicationController
  
  # before_action :user_is_admin, only: [:new, :create, :edit, :update, :destroy]
  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def show
    @team = Team.find(params[:id])
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to '/'
      flash[:success] = "New team Added!"
    else
      render :new
    end
  end

  def edit
    @team = Team.find(params[:id])
    respond_to do |format|
      format.html { redirect_to teams_path }
      format.js
    end
  end

  def update
    @team = Team.find(params[:id])
    if @team.update(team_params)
      respond_to do |format|
        format.html { redirect_to team_path }
        format.js
      end
    else
      render :edit
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    respond_to do |format|
      format.html { redirect_to season_path }
      format.js
    end

  end

  def show_details
    @team = Team.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def hide_details
    @team = Team.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

private
  def team_params
    params.require(:team).permit(:name, :title, :description, :number_of_wins, :number_of_playoffs)
  end

  def user_is_admin
    if admin
      return
    else
      redirect_to '/'
    end
  end
end