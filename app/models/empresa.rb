class Empresa < ActiveRecord::Base
  belongs_to :municipio

  def self.search(search, page)
	where(['upper(nit) like ?',
	"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nit")
  end
  
end
