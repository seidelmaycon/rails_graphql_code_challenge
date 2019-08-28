require 'csv'

namespace :import do
  desc 'Import products from CSV file'
  task products: :environment do
    CSV.foreach('db/dataset/products.csv',
                headers: true,
                header_converters: ->(header) { convert(header) }) do |row|
      Product.create(row.to_h.merge(images_attributes(row)))
    end
  end

  def images_attributes(row)
    product_name = row.first.last
    { images_attributes: images_for(product_name) }
  end

  def images_for(product_name)
    product_dir = "db/dataset/images/#{product_name}/*"
    Dir[product_dir].each_with_object([]) do |filename, array|
      array << { url: filename }
    end
  end

  def convert(header)
    headers_map.key?(header) ? headers_map[header] : header
  end

  def headers_map
    { 'type' => 'category' }
  end
end
