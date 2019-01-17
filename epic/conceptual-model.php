<body>
	<h1>Conceptual Model</h1>

	<h2>Entities & Attributes:</h2>

	<p><strong>Products</strong></p>

	<ul>
		<li>productId (primary key)</li>
		<li>productType</li>
		<li>productSize</li>
		<li>productComfortLevel</li>
		<li>productColor</li>
		<li>productPrice</li>
	</ul>

	<p><strong>Reviews</strong></p>

	<ul>
		<li>reviewId (primary key)</li>
		<li>reviewProductId (foreign key)</li>
		<li>reviewName</li>
		<li>reviewDate</li>
		<li>reviewTitle</li>
		<li>reviewContent</li>
		<li>reviewSleepStyle</li>
		<li>reviewCounter</li>
	</ul>

	<p><strong>Support</strong></p>

	<ul>
		<li>supportId (primary key)</li>
		<li>supportProductId (foreign key)</li>
		<li>supportArticle</li>
	</ul>

	<div>
		<p><strong>Entity Relationship Diagram:</strong></p>

		<img src="cmpicture.PNG" alt="erd">
	</div>

</body>