class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def create
    @team = Team.create(
                        name: params[:name],
                        creature: params[:creature],
                        state: params[:state]
                        )

    render :show
    
  end

  def show
    @team = Team.find(params[:id])
  end

  def update
      @team = Team.find(params[:id])
      @employee.update(
                      name: params[:name],
                      creature: params[:creature],
                      state: params[:state]
                      )
    
    render :show
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    render json: {message: 'Team Destroyed'}, status: 200

  end
end
