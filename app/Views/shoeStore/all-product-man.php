<?php $this->layout(config('view.layout')) ?>

<?php $this->start('page') ?>
<<div class="l-main" style="background-color: #ABD9FF;  margin-top: 70px; padding-top: 30px;">
    <div class="container">
        <h1 class="home__title" style="text-align: center;">MAN SHOES</h1>
        <div class="row pb-5 mb-4 d-flex justify-content-center">
            <?php foreach ($products as $product): ?>
            <div class="products__content col-lg-3 col-md-6 mb-4 mb-lg-0" style="margin: 20px">
                <img src="<?= $product->link_image ?>" alt="" class="product__img">
                <h3 class="products__name">
                    <?= $product->name ?>
                </h3>
                <span class="products__detail">Low Price</span><br>
                <span class="products__price">&#8363 <?= $product->price ?></span>
                <a href="/product_detail?id=<?= $product->id ?>" class="button products__button_detail">Product
                    Detail</a>
                <a href="/product/add?id=<?= $product->id ?>" class="button products__button"
                    data-id="<?= $product->id ?>" title="Add <?= $product->name ?>" data-name="<?= $product->name ?>"
                    data-return-url="<?= request()->fullUrl(); ?>"><i class='bx bx-cart-alt'></i></a>
            </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>
<?php $this->stop() ?>