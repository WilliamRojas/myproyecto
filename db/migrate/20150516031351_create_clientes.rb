class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :cedula
      t.string :nombre
      t.date :fch_ncto
      t.string :mail
      t.boolean :genero
      t.string :celular

      t.timestamps null: false
    end
  end
end
