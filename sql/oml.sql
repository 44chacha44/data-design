ALTER DATABASE nmora9 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

INSERT INTO products(productId, productType, productSize, productComfortLevel, productColor, productPrice)
	Values(UNHEX("daff3e30f2df4b06866389c5330da324"), "MATTRESSES", "CALIFORNIA KING", "SOFT", "PURPLE", "$3,499");
INSERT INTO reviews(reviewId, reviewProductId, reviewName, reviewDate, reviewTitle, reviewContent, reviewSleepstyle, reviewCounter)
	Values(UNHEX("e2e9314253b34c1ca0b3f12f5099fb61"), UNHEX("daff3e30f2df4b06866389c5330da324"), "PRINCE AKEEM", "2018-12-12 12:12:12.33", "A BED FIT FOR A PRINCE", "I PURCHASED THIS BED AND ABSOLUTELY LOVE IT!", "SIDE SLEEPER", "44 USERS FELT THIS REVIEW WAS HELPFUL");
INSERT INTO support(supportId, supportProductId, supportArticles)
	VALUES(UNHEX("3ff4287896a34b108db3e22d8f0ecc0a"), UNHEX("daff3e30f2df4b06866389c5330da324"), "Does The Purple Mattress need a box spring?");

UPDATE products SET productColor = "WHITE"
	WHERE productId = UNHEX("daff3e30f2df4b06866389c5330da324");

DELETE FROM reviews WHERE reviewDate = "2018-12-12 12:12:12.33";

INSERT INTO support(supportId, supportProductId, supportArticles)
	Values (UNHEX("3b8bd96fccaa4c7bb3bb8bc68339f9bc"), UNHEX("daff3e30f2df4b06866389c5330da324"), "What is the return process of the Purple Pillow?");

SELECT productId, productType, productSize, productComfortLevel, productColor, productPrice from products WHERE productId = UNHEX("daff3e30f2df4b06866389c5330da324");