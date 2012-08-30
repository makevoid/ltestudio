class Ltestudio < Sinatra::Base
  
  get "/" do
    haml :index
  end
  
  get "/t-shirts" do
    haml :t_shirts
  end
  
  get "/t-shirt/:name" do
    @shirt = Shirt.first name: params[:name]
    not_found unless @shirt
    haml :t_shirt
  end

  get "/contatti" do
    haml :contatti
  end
  
  get "/shop" do
    haml :shop
  end
  
end