require("sinatra")
require("sinatra/contrib/all") if development?
require("pry")

require_relative('./models/game')
also_reload('./models/*')

  # get '/:item1/:item2' do
  #   return "rock wins"
  # end

  # get '/:item1/:item2' do
  #   if (params[:item1] == "rock" && params[:item2] == "scissors")
  #     return "rock wins"
  #   elsif (params[:item1] == "scissors" && params[:item2] == "paper")
  #     return "scissors wins"
  #   else (params[:item1] == "paper" && params[:item2] == "rock")
  #     return "paper wins"
  #   end
  #
  #   # return "not working"
  # end

  get '/:hand1/:hand2' do
    @game = Game.play(params[:hand1], params[:hand2])
    erb( :result )
  end
