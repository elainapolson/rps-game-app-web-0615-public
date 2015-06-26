require_relative 'config/environment'

class GameApp < Sinatra::Base
  get '/rps/:play' do

    @new_game = RPSGame.new(params[:play].to_sym)

    @play = params[:play]

    @computer_play = @new_game.computer_play

    erb :rps_game
  end
end
