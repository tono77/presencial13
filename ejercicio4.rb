personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
personas_hash = personas.zip(edades).to_h


def edad(hash)
  sum = 0
  hash.each_value {|value| sum += value}
  sum / hash.length
end

p "#{edad(personas_hash)}"
