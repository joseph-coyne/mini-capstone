json.id product.id
json.name product.name
json.price product.price
# json.image_url product.image.image_url
json.description product.description

json.formatted do
	json.tax product.tax
 	json.total product.total
  json.is_discounted? product.is_discounted?
 end