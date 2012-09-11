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
  { name: "Works 1",  file: "1" },
  { name: "Works 2",  file: "2" },
  { name: "Works 3",  file: "3" },
  { name: "Works 4",  file: "4" },
]

include Mhash
DESIGNS.each{ |d| d.to_mhash! }
WORKS.each{ |d| d.to_mhash! }