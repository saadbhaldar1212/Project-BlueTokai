$(".cart-items").html(`${cart.length}`);
updateCart()
function add_to_cart(pid, pname, price) {

	let cart = localStorage.getItem('cart');

	if (cart == null) {

		//no cart yet
		let products = [];
		let product = { productId: pid, productName: pname, productQuantity: 1, productPrice: price }

		products.push(product);

		localStorage.setItem('cart', JSON.stringify(products));
		//console.log("Product added for the first time")
		showToast('Product added to cart')
		updateCart()
	}
	else {
		//cart already present
		let pcart = JSON.parse(cart);

		let oldProduct = pcart.find((item) => item.productId == pid)

		if (oldProduct) {

			//we have to increase the quantity
			oldProduct.productQuantity = oldProduct.productQuantity + 1
			pcart.map((item) => {
				if (item.productId == oldProduct.productId) {

					item.productQuantity = oldProduct.productQuantity;
					updateCart()
				}
			})

			localStorage.setItem('cart', JSON.stringify(pcart));
			//console.log("Product quantity increased")
			showToast(oldProduct.productName + ' Product quantity increased Quantity = ' + oldProduct.productQuantity)
			updateCart()

		} else {

			//we have to add the product

			let product = { productId: pid, productName: pname, productQuantity: 1, productPrice: price }
			pcart.push(product)
			localStorage.setItem('cart', JSON.stringify(pcart));
			//console.log("Product added")
			showToast('Product added to cart')
			updateCart()

		}
	}
	updateCart()
}

function add_to_cart1(pid, pname, price) {

	let cart = localStorage.getItem('cart');

	if (cart == null) {

		//no cart yet
		let products = [];
		let product = { productId: pid, productName: pname, productQuantity: 1, productPrice: price }

		products.push(product);

		localStorage.setItem('cart', JSON.stringify(products));
		//console.log("Product added for the first time")
	}
	else {
		//cart already present
		let pcart = JSON.parse(cart);

		let oldProduct = pcart.find((item) => item.productId == pid)

		if (oldProduct) {

			//we have to increase the quantity
			oldProduct.productQuantity = oldProduct.productQuantity + 1
			pcart.map((item) => {
				if (item.productId == oldProduct.productId) {

					item.productQuantity = oldProduct.productQuantity;
					updateCart()
				}
			})

			localStorage.setItem('cart', JSON.stringify(pcart));
			//console.log("Product quantity increased")

		} else {

			//we have to add the product

			let product = { productId: pid, productName: pname, productQuantity: 1, productPrice: price }
			pcart.push(product)
			localStorage.setItem('cart', JSON.stringify(pcart));
			//console.log("Product added")

		}
	}
	updateCart()
}


//update cart
function updateCart() {
	let cartString = localStorage.getItem('cart');
	let cart = JSON.parse(cartString);

	if (cart == null || cart.length == 0) {

		$(".cart-items").html("0");
		$(".cart-body").html("<h3>Cart does not have any items</h3>");
		$(".checkout-btn").attr('disabled',true)

	} else {

		//cart not empty
		console.log(cart)
		$(".cart-items").html(`${cart.length}`);

		let table = `
		
		<table class='table'>
		<thead class='thead-light'>
		
			<tr>
				<th>Product name</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Total Price</th>
				<th>Action</th> 
			</tr>
		
		</thead>
		
		`;

		let totalPrice = 0;

		cart.map((item) => {
			table += ` 
			<tr>
				<td> ${item.productName} </td>
				<td> ${item.productPrice} </td>
				<td> ${item.productQuantity} </td>
				<td> ${item.productQuantity * item.productPrice} </td>
				<td> <button class="btn btn-danger" onclick='deleteItemFromCart(${item.productId})'>Remove</button> </td>
				
			</tr>
			`
			totalPrice += item.productPrice * item.productQuantity;
		})

		table = table + `
		<tr><td colspan='5' class='text-right font-weight-bold'> Total Price : ${totalPrice} </td></tr>
		</table>`

		$(".cart-body").html(table);
		$(".checkout-btn").attr('disabled',false);
	}
}


function deleteItemFromCart(pid) {

	let cart = JSON.parse(localStorage.getItem('cart'));
	let newcart = cart.filter((item) => item.productId != pid)

	localStorage.setItem('cart', JSON.stringify(newcart))
	showToast('Product removed successfully')
	updateCart();
}

function showToast(content) {
	$("#toast").addClass("display");
	$("#toast").html(content);
	setTimeout(() => {
		$("#toast").removeClass("display");
	}, 2000);
}

function goToCheckout() {
	window.location = "checkout.jsp"
}

function deleteProduct() {
	localStorage.clear()
}

function showItem() {
	localStorage.getItem("cart")
}