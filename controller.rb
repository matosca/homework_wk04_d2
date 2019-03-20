require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game.rb')
also_reload('./models/*')


get '/' do
  erb(:home)
end

get '/round_one/:rock/:scissors' do
  game1 = Game.new(params[:rock], params[:scissors])
  @game = game1.round_one()
  erb(:result)
  # return "#{game.round_one()}"
end

get '/round_two/:paper/:rock' do
  game2 = Game.new(params[:paper], params[:rock])
  @game = game2.round_two()
  erb(:result)
  # return "#{game.round_two()}"
end

get '/round_three/:scissors/:paper' do
  game3 = Game.new(params[:scissors], params[:paper])
  @game = game3.round_three()
  erb(:result)
  # return "#{game.round_three()}"
end

get '/draw/:rock1/:rock2' do
  game = Game.new(params[:rock1], params[:rock2])
  return "#{game.draw()}"
end
# get '/round/:rock/:paper' do
#   game = Game.new(params[:rock], params[:paper])
#   return "#{game.round()}"
# end
