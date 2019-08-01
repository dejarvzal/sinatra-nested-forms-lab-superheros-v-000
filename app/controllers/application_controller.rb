require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @teams = Team.new(params[:name][:motto])
    @heroes = Hero.new(params[:team][:heroes][0][:name], params[:teams][:heroes][0][:power], params[:teams][:heroes][0][:bio])
  end

end
