DESIGNS = [
  { name: "TWELVE MONK",      file: "12monk" },
  { name: "BOM",              file: "bom" },
  { name: "CLINT",            file: "clint" },
  { name: "WOMAN",            file: "donna" },
  { name: "IMPRONTA",         file: "impronta" },
  { name: "LOVE",             file: "love" },
  { name: "SATRI",            file: "satrial" },
  { name: "SKULL",            file: "skull" },
]

WORKS = [
  { name: "SUBWAY",  file: "subway" },
  { name: "DUDE",  file: "dude" },
  { name: "HOMELESS#1",  file: "homeless_1" },
  { name: "HOMELESS#2",  file: "homeless_2" },
  { name: "WALTER WHITE",  file: "walter" },
]

STAMPE = [
  { name: "Plottaggi",  file: "plotter" },
  { name: "Biglietti da visita",  file: "biglietti" },
  { name: "Fotocopie",  file: "fotocopie" },
  { name: "Brochure",  file: "brochure" },
  { name: "Rilegature",  file: "rilegature" },
  { name: "Adesivi",  file: "adesivi" },
  { name: "Tesi di laurea",  file: "tesi" },
  { name: "Cataloghi",  file: "cataloghi" },
  { name: "Vetrofanie",  file: "vetrofanie" },
]

include Mhash
DESIGNS.each{ |d| d.to_mhash! }
WORKS.each{ |d| d.to_mhash! }
STAMPE.each{ |d| d.to_mhash! }