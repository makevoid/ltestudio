DESIGNS = [
  { name: "Twelve monk",      file: "12monk" },
  { name: "Bom",              file: "bom" },
  { name: "Clint",            file: "clint" },
  { name: "Woman",            file: "donna" },
  { name: "Impronta",         file: "impronta" },
  { name: "Love",             file: "love" },
  { name: "Satri",            file: "satrial" },
  { name: "SKull",            file: "skull" },
]

WORKS = [
  { name: "Works 1",  file: "1" },
  { name: "Works 2",  file: "2" },
  { name: "Works 3",  file: "3" },
  { name: "Works 4",  file: "4" },
]

include Mhash
DESIGNS.each{ |d| d.to_mhash! }
WORKS.each{ |d| d.to_mhash! }