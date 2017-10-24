meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

ventas_hash = meses.zip(ventas).to_h
ventas_hash = ventas_hash.invert
p ventas_hash.keys.max
