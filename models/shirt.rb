class Shirt
  
  include DataMapper::Resource
  
  property :id,     Serial
  property :name,   String
  property :color,  String
  
  def path
    "/images/shirts/#{name}.png"
  end
  
end