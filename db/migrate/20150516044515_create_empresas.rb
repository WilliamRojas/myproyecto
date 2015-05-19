class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nit
      t.string :razon_social
      t.string :gerente
      t.string :direccion
      t.string :email
      t.string :telefono
      t.date :fch_creacion
      t.integer :nro_trabajadores
      t.references :municipio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
