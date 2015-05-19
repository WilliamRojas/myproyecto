json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :cedula, :nombre, :fch_ncto, :mail, :genero, :celular
  json.url cliente_url(cliente, format: :json)
end
