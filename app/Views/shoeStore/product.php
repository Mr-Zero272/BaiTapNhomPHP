<?php $this->layout(config('view.layout')); ?>
<?php $this->start('page'); ?>
<section class="product section bd-container" id="products">
    <span class="section-subtitle"></span>
    <h2 class="section-title">KIDS SHOES</h2>
    <a href="Sepatu Anak.html"><button class="button" style="color: white;">See All</button></a>
    <div class="products__container bd-grid slick_two" id="ward-list">
        <?php foreach ($productsKid as $productKid): ?>
        <div class="products__content">
            <img src="<?= $productKid->link_image ?>" alt="" class="product__img">
            <h3 class="products__name">
                <?= $productKid->name ?>
            </h3>
            <span class="products__detail">Low Price</span><br>
            <span class="products__price">&#8363 <?= $productKid->price ?></span>
            <a href="/product_detail?id=<?= $productKid->id ?>" class="button products__button_detail">Product Detail</a>
            <a href="/product/add?id=<?= $productKid->id ?>" class="button products__button"
            data-id="<?= $productKid->id ?>" 
            title="Add <?= $productKid->name ?>" 
            data-name="<?= $productKid->name ?>" 
            data-return-url="<?= request()->fullUrl(); ?>"><i class='bx bx-cart-alt'></i></a>
        </div>
        <?php endforeach; ?>
    </div>
</section>
<!-- sepatu anak -->

<!-- sepatu wanita -->
<section class="product section bd-container" id="products">
    <span class="section-subtitle"></span>
    <h2 class="section-title">WOMAN SHOES</h2>
    <a href="Sepatu Wanita.html"><button class="button" style="color: white;">See All</button></a>
    <div class="products__container bd-grid slick_two">
        <?php foreach ($productsWoman as $productWoman): ?>
        <div class="products__content">
            <img src="<?= $productWoman->link_image ?>" alt="" class="product__img">
            <h3 class="products__name">
                <?= $productWoman->name ?>
            </h3>
            <span class="products__detail">Low Price</span><br>
            <span class="products__price">&#8363 <?= $productWoman->price ?></span>
            <a href="/product_detail?id=<?= $productWoman->id ?>" class="button products__button_detail">Product Detail</a>
            <a href="/product/add?id=<?= $productWoman->id ?>" class="button products__button"
            data-id="<?= $productWoman->id ?>" 
            title="Add <?= $productWoman->name ?>" 
            data-name="<?= $productWoman->name ?>" 
            data-return-url="<?= request()->fullUrl(); ?>"><i class='bx bx-cart-alt'></i></a>
        </div>
        <?php endforeach; ?>
    </div>
</section>
<!-- sepatu wanita -->

<!-- sepatu laki -->
<section class="product section bd-container" id="products">
    <span class="section-subtitle"></span>
    <h2 class="section-title">MEN SHOES</h2>
    <a href="Sepatu Laki.html"><button class="button" style="color: white;">See All</button></a>
    <div class="products__container bd-grid slick_two">
        <?php foreach ($productsMan as $productMan): ?>
        <div class="products__content">
            <img src="<?= $productMan->link_image ?>" alt="" class="product__img">
            <h3 class="products__name">
                <?= $productMan->name ?>
            </h3>
            <span class="products__detail">Low Price</span><br>
            <span class="products__price">&#8363 <?= $productMan->price ?></span>
            <a href="/product_detail?id=<?= $productMan->id ?>" class="button products__button_detail">Product Detail</a>
            <a href="/product/add?id=<?= $productMan->id ?>" class="button products__button"
            data-id="<?= $productMan->id ?>" 
            title="Add <?= $productMan->name ?>" 
            data-name="<?= $productMan->name ?>" 
            data-return-url="<?= request()->fullUrl(); ?>"><i class='bx bx-cart-alt'></i></a>
        </div>
        <?php endforeach; ?>
    </div>
</section>
<!-- sepatu laki -->
<?php $this->stop(); ?>