require 'sinatra'
require_relative 'poker.rb'
# require_relative 'pairs.rb'
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
white_hand = session[:$white_hand]
black_hand = session[:$black_hand]
white_temp = session[:white_temp]
black_temp = session[:black_temp]
load 'poker.rb'


erb :index, :layout => :layout, locals: {white: $white, black: $black, cards: cards, deck: deck, white_score: $w_score, black_score: $b_score, black_high_card: $black_high_card, white_high_card: $white_high_card, white_rank_1: $white_rank_1, black_rank_1: $black_rank_1, white_rank: $white_rank, black_rank: $black_rank, white_hand: $white_hand, black_hand: $black_hand, white_temp: white_temp, black_temp: black_temp  } 
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
white_hand = session[:$white_hand]
black_hand = session[:$black_hand]
white_temp = session[:white_temp]
black_temp = session[:black_temp]
load 'poker.rb'


erb :index, :layout => :layout, locals: {white: $white, black: $black, cards: cards, deck: deck, white_score: $w_score, black_score: $b_score, black_high_card: $black_high_card, white_high_card: $white_high_card, white_rank_1: $white_rank_1, black_rank_1: $black_rank_1, white_rank: $white_rank, black_rank: $black_rank, white_hand: $white_hand, black_hand: $black_hand, white_temp: white_temp, black_temp: black_temp  } 
end

post '/load' do
session[:white] = white
session[:black] = black
session[:deck] = deck
session[:black_high_card] = black_high_card
session[:white_high_card] = white_high_card
session[:$white_hand] = white_hand 
session[:$black_hand] = black_hand
session[:white_temp] = white_temp
session[:black_temp] = black_temp
load 'poker.rb'
redirect '/'
end

