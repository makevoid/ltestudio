class Ltestudio < Sinatra::Base
  
  get "/" do
    haml :index
  end
  
  get "/t-shirts" do
    haml :t_shirts
  end
  
  get "/t-shirts/:file" do
    @shirt = DESIGNS.find{ |s| s.file == params[:file] }
    halt 404, "Pagina non trovata" unless @shirt
    haml :t_shirt
  end

  get "/works" do
    haml :works
  end
  
  get "/works/:file" do
    @work = WORKS.find{ |s| s.file == params[:file] }
    halt 404, "Pagina non trovata" unless @work
    haml :work
  end
  
  get "/stampe" do
    haml :stampe 
  end
  
  get "/contatti" do
    haml :contatti
  end

  get "/shop" do
    haml :shop
  end
  
  
  

  
end