class LeaguesController < ApplicationController
  def index
    @leagues=League.all

  end

  def new
    @league = League.new

  end

  def create
    puts params
    @league = League.new(params[:league])
    if @league.save 
       ##do something
       flash[:notice] = "League successfully created..."
       redirect_to @league
    else
       render "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
    @league = League.find(params[:id])
  end
end
