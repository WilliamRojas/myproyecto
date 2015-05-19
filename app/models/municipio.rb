class Municipio < ActiveRecord::Base
	#has_may :empresas
	validates :nombre, :presence => true
	validates :nombre, length:{minimum: 5, maximum: 50}
end
