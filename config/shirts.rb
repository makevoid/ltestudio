DESIGNS = [
  { name: "control_mind",      file: "control_mind" },
  { name: "angela",      file: "angela" },
  { name: "reality_is_not_real",      file: "reality_is_not_real" },
  { name: "breathe",      file: "breathe" },
  { name: "doc",      file: "doc" },
  { name: "bttf_almanac",      file: "bttf_almanac" },
  { name: "spike",      file: "spike" },
  { name: "b_lebowski",      file: "b_lebowski" },
  { name: "identity",      file: "identity" },
  { name: "jespin",      file: "jespin" },
  { name: "twelve_monkeys",      file: "twelve_monkeys" },
]

WORKS = [
  { name: "walter_white",  file: "walter_white" },
  { name: "homeless",  file: "homeless" },
  { name: "homeless_b",  file: "homeless_b" },
  { name: "in_subway",  file: "in_subway" },
]

STAMPE = [
  { name: "biglietti",  file: "biglietti" },
  { name: "plottaggi",  file: "plottaggi" },  
  
]

include Mhash
DESIGNS.each{ |d| d.to_mhash! }
WORKS.each{ |d| d.to_mhash! }
STAMPE.each{ |d| d.to_mhash! }