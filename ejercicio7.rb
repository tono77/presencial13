inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

opt = 0
until opt == 7
  puts 'Ingresa una opcion [1-6], [7] para salir:'
  puts '[1] Agregar un item'
  puts '[2] Eliminar un item'
  puts '[3] Actualizar un item'
  puts '[4] Ver Stock total'
  puts '[5] Ver Mayor stock'
  puts '[6] Validacion de stock'
  puts '[7] Salir'
  opt = gets.chomp.to_i

  case opt
    when 1
      puts 'Ingresar Item, Stock: '
      arr = gets.chomp.split(',')
      inventario[arr.first] = arr.last.to_i
      p inventario
    when 2
      del_item()
    when 3
      upd_item()
    when 4
      tot_stock()
    when 5
      max_stock()
    when 6
      val_stock()
    end

end
