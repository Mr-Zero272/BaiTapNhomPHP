<?php $this->layout(config('view.layout')) ?>

<?php $this->start('page') ?>

<<<<<<< HEAD
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
=======
<div class="container d-flex justify-content-center" style="margin-top: 90px">
    <div class="card mb-3" style="max-width: 940px;">
        <div class="row no-gutters">
            <div class="col-md-4">
                <img src="https://i.pinimg.com/564x/57/6c/fe/576cfe89b5f516bf19a0e232d0cc8650.jpg" id="main-img"
                    class="card-img" alt="...">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h3 class="card-title"><?= $detail->product->name?></h4>
                    <div class="product-rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                        <span>4.8</span>
                    </div>
                    <p class="card-text">
                        Old price: <span style="text-decoration: line-through"> <?= $detail->product->price + $detail->product->price * 0.5 ?></span>
                        New price: <?= $detail->product->price ?>
                    </p>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                        additional content. This content is a little bit longer. Lorem ipsum dolor sit amet consectetur
                        adipisicing elit. Odio, dolorem nobis? Repellat, in. Sunt suscipit, velit, alias omnis, corrupti
                        eaque modi dolorem blanditiis impedit neque vero quaerat eum dolor hic. Lorem ipsum dolor sit,
                        amet consectetur adipisicing elit. Assumenda sed, eaque ea asperiores, voluptas dolore quia
                        accusantium ab impedit, quasi minus cumque delectus neque illum iure modi saepe qui minima.</p>
                    <p class="card-text"><small class="text-muted">You can adjust the quantity in the cart</small></p>
                    <a href="/product/add?id=<?= $detail->id ?>" class="btn btn-outline-primary add_from_detail"
                    data-id="<?= $detail->id ?>" 
                    title="Add <?= $detail->product->name ?>" 
                    data-name="<?= $detail->product->name ?>" 
                    data-return-url="<?= request()->fullUrl(); ?>">Add to cart<i class="fas fa-cart-arrow-down"></i></a>
                </div>
            </div>
        </div>
        <div class="row no-gutters">
            <div class="col">
                <img src="<?= $detail->link_image_1 ?>" onmouseover="myFunction(this)"
                    class="card-img card-img-item" alt="...">
            </div>
            <div class="col">
                <img src="<?= $detail->link_image_2 ?>" onmouseover="myFunction(this)"
                    class="card-img card-img-item" alt="...">
            </div>
            <div class="col">
                <img src="<?= $detail->link_image_3 ?>" onmouseover="myFunction(this)"
                    class="card-img card-img-item" alt="...">
            </div>
            <div class="col">
                <img src="<?= $detail->link_image_4 ?>" onmouseover="myFunction(this)"
                    class="card-img card-img-item" alt="...">
            </div>
        </div>
    </div>
</div>
>>>>>>> faffd3b8e2175449cba6c9f9a5e35606b1530917

<?php $this->stop() ?>