<?php $this->layout(config('view.layout')) ?>

<?php $this->start('page') ?>

<main class="l-main" style="background-image: linear-gradient(to right, #2193b0, #6dd5ed);; margin-top: 70px;">
    <div class="card-wrapper">
        <div class="card">
            <!-- card left -->
            <div class="product-imgs">
                <div class="img-display">
                    <div class="img-showcase">
                        <img src="assets/images/23.laki.png" alt="shoe image">
                        <img src="assets/images/23.1.laki.png" alt="shoe image">
                        <img src="assets/images/23.2.laki.png" alt="shoe image">
                        <img src="assets/images/size laki.png" alt="shoe image">
                    </div>
                </div>
                <div class="img-select">
                    <div class="img-item" style="width: 50%; height: 50%;">
                        <a href="#" data-id="1">
                            <img src="assets/images/23.laki.png" alt="shoe image">
                        </a>
                    </div>
                    <div class="img-item" style="width: 50%; height: 50%; margin-top: 25px;">
                        <a href="#" data-id="2">
                            <img src="assets/images/23.1.laki.png" alt="shoe image">
                        </a>
                    </div>
                    <div class="img-item" style="width: 50%; height: 50%;margin-top: 25px;">
                        <a href="#" data-id="3">
                            <img src="assets/images/23.2.laki.png" alt="shoe image">
                        </a>
                    </div>
                    <div class="img-item" style="width: 50%; height: 50%;margin-top: 25px;">
                        <a href="#" data-id="4">
                            <img src="assets/images/size laki.png" alt="shoe image">
                        </a>
                    </div>
                </div>
            </div>
            <!-- gambar product -->

            <!-- product description -->
            <div class="product-content">
                <h1 class="product-title">Shoes-Empower-02-BlackWhite</h1>
                <a href="#" class="product-link">visit ShoesStore</a>
                <div class="product-rating">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                    <span>4.7</span>
                </div>
                <div class="product-price">
                    <p class="last-price">Old Price: <span>Rp.393.000</span></p>
                    <p class="new-price">New Price: <span>Rp.279.000</span></p>
                </div>
                <div class="product-detail">
                    <h2>ABOUT THIS ITEM: </h2>
                    <p>"SUPER LIGHTWEIGHT, Superlite Phylon Sole is made of a special compound material, resulting in a
                        very soft and comfortable outsole.

                        Top: Hard Net + TPR Strong and Breathable
                        Insole: EVA Sponge Insole provides Ultimate Cushion and Comfort
                        Outsole: Phylon Superlite with High Flexibility and Extra Comfort

                        How to measure a good shoe/sandal size:
                        <br>
                        1. Measure your foot length <br>
                        2. Then add +/- 1cm from the foot size<br>
                        3. Adjust the size with our size chart
                    </p>
                    <p>Example:
                        If your foot length is 24.5cm, we recommend ordering size 39 (25.6cm).</p>
                    <li>Color: <span>Black & White</span></li>
                    <li>Available: <span>in stock</span></li>
                    <li>Category: <span>Shoes</span></li>
                    </ul>
                </div>
                <div class="purchase-info">
                    <input type="number" min="0" value="1">
                    <button type="button" class="btn">
                        Add to Cart <i class="fas fa-shopping-cart"></i>
                    </button>
                </div>
            </div>
</main>

<?php $this->stop() ?>