ALTER DATABASE nmora9 CHARACTER SET utf8 COLLATE utf8_unicode_ci;


DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS support;

CREATE TABLE products (
	productId BINARY(16) NOT NULL,
	productType VARCHAR(32) NOT NULL,
	productSize VARCHAR(32) NOT NULL,
	productComfortLevel VARCHAR(32) NOT NULL,
	productColor VARCHAR(32) NOT NULL,
	productPrice VARCHAR(32) NOT NULL,
	UNIQUE(productId),
	PRIMARY KEY(productId)
);

CREATE TABLE reviews (
	reviewId BINARY(16) NOT NULL,
	reviewProductId BINARY(16) NOT NULL,
	reviewName VARCHAR(140) NOT NULL,
	reviewDate DATETIME(6) NOT NULL,
	reviewTitle VARCHAR(140) NOT NULL,
	reviewContent VARCHAR(140) NOT NULL,
	reviewSleepStyle VARCHAR(140) NOT NULL,
	reviewCounter VARCHAR(140) NOT NULL,
	INDEX(reviewProductId),
	FOREIGN KEY(reviewProductId) REFERENCES products(productId),
	PRIMARY KEY(reviewId)
);

CREATE TABLE support (
	supportId BINARY(16) NOT NULL,
	supportProductId BINARY(16) NOT NULL,
	supportArticles VARCHAR(140) NOT NULL,
	INDEX (supportProductId),
	FOREIGN KEY(supportProductId) REFERENCES products(productId),
	PRIMARY KEY(supportId)
);
