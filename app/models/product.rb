class Product < ActiveRecord::Base
  attr_accessible :asin, :client, :name, :oh, :pos, :sku
end
