json.id product.id
json.name product.name
json.price product.price
json.description product.description
json.categories	product.category_names
json.images	product.images

json.formatted do
	json.tax product.tax
 	json.total product.total
  json.is_discounted? product.is_discounted?
 end