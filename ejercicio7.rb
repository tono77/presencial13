inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

def capitalize_words(str)
  str.split.map(&:capitalize).join(' ')
end

def add_item(hash, key, value)
  hash[capitalize_words(key).to_sym] = value
end

def del_item(hash, arr)
  hash.delete_if {|key, value| key.to_s.downcase == arr.downcase }
end

def upd_item(hash, key, value)
  hash[key.to_sym] = value
end

def tot_stock(hash)
  suma = 0
  hash.each do |key, value|
    suma += value
  end
  return suma
end

def max_stock(hash)
  arr = hash.max_by{|k,v| v}
  return arr
end

def val_stock(hash, key)
  hash.has_key?(key.to_sym)
end

opt = 0
until opt == 7
  puts "========================================\n\n"
  puts 'Ingresa una opcion [1-6], [7] para salir:'
  puts '[1] Agregar un item'
  puts '[2] Eliminar un item'
  puts '[3] Actualizar un item'
  puts '[4] Ver Stock total'
  puts '[5] Ver Mayor stock'
  puts '[6] Validacion de stock'
  puts '[7] Salir'
  puts "========================================\n\n"
  opt = gets.chomp.to_i

  case opt
    when 1
      puts 'Ingresar Item, Stock: '
      arr = gets.chomp.split(',')
      add_item(inventario, arr.first, arr.last.to_i)
    when 2
      puts 'Ingresar Item a Eliminar: '
      arr = gets.chomp
      del_item(inventario, capitalize_words(arr))
      puts "Elemento #{arr} eliminado"
    when 3
      puts 'Ingresar Item, Stock: '
      arr = gets.chomp.split(',')
      upd_item(inventario,capitalize_words(arr.first),arr.last.to_i) if inventario.has_key?(capitalize_words(arr.first).to_sym)
    when 4
      p "El total de inventario de todos los productos: #{tot_stock(inventario)}"
    when 5
      arr = max_stock(inventario)
      p "El producto con más inventario de todos los productos es #{arr.first}: #{arr.last.to_i}"
    when 6
      puts 'Ingresar Item a Consultar: '
      arr = gets.chomp
      puts "SI" if val_stock(inventario, capitalize_words(arr))
    end
  puts inventario
end
