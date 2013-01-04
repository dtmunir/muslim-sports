class TeamsController < ApplicationController
  def index
    @teams=Team.all
  end

  def new
    @team = Team.new
  end

  def create
    puts params
    @team = Team.new(params[:team])
    if @team.save
      flash[:notice] = "Team succesfully created..."
      redirect_to @team
    else
      render "new"
    end
  end

  def edit
    @team = Team.find(params[:id])
    @post.user = current_user
    
  end

  def update
  end

  def destroy
  end

  def show
    @team = Team.find(params[:id])
  end
end
