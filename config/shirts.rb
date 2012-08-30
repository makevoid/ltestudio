DESIGNS = [
  { name: "If You Want",      file: "ifyouwant" },
  { name: "If You Want Due",  file: "ifyouwant2" },
  { name: "An Tani",          file: "antani1" },
  { name: "Ntani2",           file: "antani2" },
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