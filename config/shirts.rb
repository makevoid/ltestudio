DESIGNS = %w(ifyouwant ifyouwant2)

SHIRTS = [
  { name: "ifyouwant", colors: %w(bianco giallo rosso) },
  { name: "ifyouwant2", colors: %w(bianco verde) },
  { name: "ifyouwant3", colors: %w(bianco verde) },
  { name: "ifyouwant4", colors: %w(bianco verde) },
]

SHIRTS.each do |shirt|
  shirt[:colors].each do |color|
    Shirt.create name: shirt[:name], color: color
  end
end