class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    @player.elo_rating = 1500 # Set default ELO rating

    if @player.save
      # Create a team for singles
      team = Team.create(name: "#{@player.name}-SOLO")
      @player.teams << team

      # Link to user if email provided
      if params[:user_email].present?
        user = User.find_by(email: params[:user_email])
        @player.update(user: user) if user
      end

      redirect_to root_path, notice: 'Player was successfully created.'
    else
      render :new
    end
  end

  private

  def player_params
    params.require(:player).permit(:name)
  end
end
