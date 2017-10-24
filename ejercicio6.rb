restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

#1. Obtener el plato mas caro.
p restaurant_menu.values.max

#2. Obtener el plato mas barato.
p restaurant_menu.values.min

#3. Sacar el promedio del valor de los platos.
suma = 0
restaurant_menu.each_value {|value| suma += value}
promedio = suma/restaurant_menu.length

#4. Crear un arreglo con solo los nombres de los platos
platos = []
platos = restaurant_menu.keys.to_a

#5. Crear un arreglo con solo los valores de los platos.
valores = []
valores = restaurant_menu.values.to_a

#6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
restaurant_menu.each do |key, value|
  restaurant_menu[key] = value * 1.19
end
p restaurant_menu

# 7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.
 restaurant_menu.each do |key, value|
     restaurant_menu[key] = value - value*0.2   if (key.split(' ').count > 1)
 end
 p  restaurant_menu
