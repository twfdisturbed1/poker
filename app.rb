require 'sinatra'
require_relative 'poker.rb'
require_relative 'pairs.rb'
enable :sessions

get '/' do
white = session[:$white]
black = session[:$black]
cards = session[:cards]
deck = session[:deck]
white_score = session[:$w_score]
black_score = session[:$b_score]
white_high_card = session[:$white_high_card]
black_high_card = session[:$black_high_card]
white_rank_1 = session[:$white_rank_1]
black_rank_1 = session[:$black_rank_1]
white_rank = session[:$white_rank]
black_rank = session[:$black_rank]
load 'poker.rb'


erb :index, :layout => :layout, locals: {white: $white, black: $black, cards: cards, deck: deck, white_score: $w_score, black_score: $b_score, black_high_card: $black_high_card, white_high_card: $white_high_card, white_rank_1: $white_rank_1, black_rank_1: $black_rank_1, white_rank: $white_rank, black_rank: $black_rank  } 
end

get '/index' do

white = session[:$white]
black = session[:$black]
cards = session[:cards]
deck = session[:deck]
white_score = session[:$w_score]
black_score = session[:$b_score]
white_high_card = session[:$white_high_card]
black_high_card = session[:$black_high_card]
white_rank_1 = session[:$white_rank_1]
black_rank_1 = session[:$black_rank_1]
white_rank = session[:$white_rank]
black_rank = session[:$black_rank]
load 'poker.rb'


erb :index, :layout => :layout, locals: {white: $white, black: $black, cards: cards, deck: deck, white_score: $w_score, black_score: $b_score, black_high_card: $black_high_card, white_high_card: $white_high_card, white_rank_1: $white_rank_1, black_rank_1: $black_rank_1, white_rank: $white_rank, black_rank: $black_rank  } 
end

post '/load' do
session[:white] = white
session[:black] = black
session[:deck] = deck
session[:black_high_card] = black_high_card
session[:white_high_card] = white_high_card
load 'poker.rb'
redirect '/'
end

# 	game = Hand_checker.new
# 	game.check(game.hands)
# 	winner = game.winner
# 	hand = game.player_got
# 	high_card = game.high_card
# 	player1_cards = []
# 	player2_cards = []
# 	game.hands.values[0].cards.each do |v|
# 	  player1_cards << v.card
# 	end
# 	game.hands.values[1].cards.each do |v|
# 	  player2_cards << v.card
# 	end
  
# 	session[:winner] = winner
# 	session[:hand] = hand
# 	session[:high_card] = high_card
# 	session[:player1_cards] = player1_cards
# 	session[:player2_cards] = player2_cards
# 	redirect '/'
#   end