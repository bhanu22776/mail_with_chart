namespace :product do
  desc "Load records to Product table"
  task :data => :environment do
  	s = Roo::CSV.new("#{Rails.root}/public/product.csv")
  	
  	for i in s.first_row+1 .. s.last_row
  		Product.create(:client => s.cell(i,'B'), :name => s.cell(i,'C'), :oh => s.cell(i,'D'),
  		 :pos => s.cell(i,'E'), :asin => s.cell(i,'F'), :sku => s.cell(i,'G'))
  	end
  end

end
