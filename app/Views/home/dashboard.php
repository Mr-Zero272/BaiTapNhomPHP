<main class="l-main">
    <!----Home---->
    <section class="home" id="home" style="background-color: #ABD9FF;">
        <div class="slideshow-container">
            <div class="mySlides fade">
                <div class="home__container bd-container bd-grid">
                    <div class="home__data">
                        <h1 class="home__title">BLACK ALDAS SHOES</h1>
                        <h2 class="home__subtitle">Black Aldas shoes are special shoes for Kids</h2>
                    </div>
                    <img src="assets/images/1.png" alt="" class="home__img">
                </div>
            </div>

            <div class="mySlides fade">
                <div class="home__container bd-container bd-grid">
                    <div class="home__data">
                        <h1 class="home__title">BLACK AND WHITE STAKE SHOES</h1>
                        <h2 class="home__subtitle">Black and White Stake Shoes Are Special Shoes For Men</h2>
                    </div>
                    <img src="assets/images/21.laki.png" alt="" class="home__img">
                </div>
            </div>

            <div class="mySlides fade">
                <div class="home__container bd-container bd-grid">
                    <div class="home__data">
                        <h1 class="home__title">LSP 1903 RAINBOW SHOES</h1>
                        <h2 class="home__subtitle">Lsp 1903 Rainbow Shoes Are Special Shoes For Women</h2>
                    </div>
                    <img src="assets/images/10.wanita.png" alt="" class="home__img">
                </div>
            </div>

        </div>
    </section>
    <!--Next and Previous button-->
    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
    <a class="next" onclick="plusSlides(1)">&#10095;</a>
    <!--dot circle-->
    <div style="text-align:center;">
        <span class="dots" onclick="currentSlide(1)"></span>
        <span class="dots" onclick="currentSlide(2)"></span>
        <span class="dots" onclick="currentSlide(3)"></span>
    </div>
    <!----About---->
    <section class="about section bd-container" id="about">
        <span class="section-subtitle" style="font-size: 30px;">About us</span>
        <div class="about__container bd-grid">
            <div class="about__data">
                <h2 class="section-title about__initial">We create the best local shoes</h2>
                <p class="about__description">Shoes Store is a website that is engaged in the sale of shoes, which has
                    several types of sneakers for: Children's Shoes, Women's Shoes and Men's Shoes. With the ShoesStore
                    e-commerce website, it can help market their products using internet media so that they can bring in
                    many customers and customers around the world can see and buy products without having to come
                    directly to the store.</p>
                <a href="AboutUs.html" class="button">Explore history</a>
            </div>
            <img src="assets/images/aboutus.jpg" alt="" class="about__img">
        </div>
    </section>

    <!----Service---->
    <div style="background-color: #ABD9FF;">
        <section class="services section bd-container" id="services">
            <span class="section-subtitle" style="font-size: 30px;">Services</span>
            <h2 class="section-title">Our Amazing Services</h2>
            <div class="services__container bd-grid">
                <div class="services__content">
                    <img src="assets/images/10.4.jpg" alt="" class="services__img">
                    <h3 class="services__title">Upper Canvas</h3>
                    <p class="services__description">SUPER LIGHTWEIGHT, Superlite Phylon Sole is made from a special
                        compound material, which results in a very soft and comfortable outsole.</p>
                </div>
                <div class="services__content">
                    <img src="assets/images/17.3.webp" alt="" class="services__img">
                    <h3 class="services__title">Eva Sponge Insole</h3>
                    <p class="services__description">EVA Sponge Insole provides Ultimate Cushion and Comfort</p>
                </div>
                <div class="services__content">
                    <img src="assets/images/19.2.webp" alt="" class="services__img">
                    <h3 class="services__title">Stitching</h3>
                    <p class="services__description">Neat stitching makes the shoes have a good shape, sturdy,
                        comfortable, and durable.</p>
                </div>
            </div>
        </section>
    </div>
    <!----Product---->
    <section class="product section bd-container" id="products">
        <span class="section-subtitle"></span>
        <h2 class="section-title">PRODUCTS of the week</h2>

        <div class="products__container bd-grid logo-slider slick_two">
        <?php foreach ($products as $product): ?>
        <div class="products__content">
            <img src="<?= $product->link_image ?>" alt="" class="product__img">
            <h3 class="products__name">
                <?= $product->name ?>
            </h3>
            <span class="products__detail">Low Price</span><br>
            <span class="products__price">&#8363 <?= $product->price ?></span>
            <a href="/product_detail?id=<?= $product->id ?>" class="button products__button_detail">Product Detail</a>
            <a href="/product/add?id=<?= $product->id ?>" class="button products__button"
            data-id="<?= $product->id ?>" 
            title="Add <?= $product->name ?>" 
            data-name="<?= $product->name ?>" 
            data-return-url="<?= request()->fullUrl(); ?>"><i class='bx bx-cart-alt'></i></a>
        </div>
        <?php endforeach; ?>
        </div>
    </section>

    <!---- Contact us---->
    <div style="background-color: #ABD9FF;">
        <section class="contact section bd-container" id="contact">
            <div class="contact__container bd-grid">
                <div class="contact__data">
                    <span class="section-subtitle contact__initial">Let's Talk</span>
                    <h2 class="section-title contact__initial">Contact Us</h2>
                    <p class="contact__description">
                        If you want to buy shoes in our store, contact us and we will immediately serve you with service
                        24/7
                    </p>
                </div>
                <div class="contact__button">
                    <a href="/contact" class="button">Contact Us Now</a>
                </div>
            </div>
        </section>
    </div>
</main>