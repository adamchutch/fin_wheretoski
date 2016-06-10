class MountainsController < ApplicationController
  def index
    @mountains = Mountain.all
  end

  def show
    @mountain = Mountain.find(params[:id])
  end

  def new
    @mountain = Mountain.new
  end

  def create
    @mountain = Mountain.new
    @mountain.mountain = params[:mountain]
    @mountain.state = params[:state]
    @mountain.terrain_difficulty = params[:terrain_difficulty]
    @mountain.ski_acreage = params[:ski_acreage]
    @mountain.details = params[:details]

    if @mountain.save
      redirect_to "/mountains", :notice => "Mountain created successfully."
    else
      render 'new'
    end
  end

  def edit
    @mountain = Mountain.find(params[:id])
  end

  def update
    @mountain = Mountain.find(params[:id])

    @mountain.mountain = params[:mountain]
    @mountain.state = params[:state]
    @mountain.terrain_difficulty = params[:terrain_difficulty]
    @mountain.ski_acreage = params[:ski_acreage]
    @mountain.details = params[:details]

    if @mountain.save
      redirect_to "/mountains", :notice => "Mountain updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @mountain = Mountain.find(params[:id])

    @mountain.destroy

    redirect_to "/mountains", :notice => "Mountain deleted."
  end
end
