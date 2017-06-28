class TeamsController < ApplicationController
  def index
    @teams = Team.alpha
    @team = Team.find(rand(1..50))
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to  teams_path
    else
      render :new
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team= Team.find(params[:id])
    if @team.update(team_params)
      redirect_to teams_path
    else
      render :edit
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to teams_path
  end

private
  def team_params
    params.require(:team).permit(:name, :city, :wins)
  end
end
