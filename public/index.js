/* global axios */
var productTemplate = document.querySelector("#product-card");
var productRow = document.querySelector(".row");

axios.get("http://localhost:3000/api/products").then(function(response) {
	var products = response.data;
	console.log(products);

	products.forEach(function(product) {
		var productClone = productTemplate.content.cloneNode(true);
		productClone.querySelector(".card-img-top").src =
			product.images[0].image_url;
		productClone.querySelector(".card-title").innerText = product.name;
		productClone.querySelector(".card-text").innerText = product.description;

		productRow.appendChild(productClone);
	});
});
