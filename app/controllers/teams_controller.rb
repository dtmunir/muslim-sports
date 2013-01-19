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
        
  end

  def update
  end

  def destroy
  end

  def show
    @team = Team.find(params[:id])
    @test1 = user_signed_in? ? current_user.id : "Not signed in" 
    @dummy1 = @team.users

  end

  def addToUser
    @team = Team.find(params[:id])
    @team.users << current_user

    render "show"
  end
end
