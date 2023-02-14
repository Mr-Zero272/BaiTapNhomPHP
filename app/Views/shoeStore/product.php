<?php $this->layout(config('view.layout')); ?>
<?php $this->start('page'); ?>
<section class="product section bd-container" id="products">
    <span class="section-subtitle"></span>
    <h2 class="section-title">KIDS SHOES</h2>
    <a href="/seeAllProduct?kind=kid"><button class="button" style="color: white;">See All</button></a>
    <div class="products__container bd-grid slick_two" id="ward-list">
        <?php foreach ($productsKid as $productKid): ?>
        <div class="products__content">
            <img src="<?= $productKid->link_image ?>" alt="" class="product__img">
            <h3 class="products__name">
                <?= $productKid->name ?>
            </h3>
            <span class="products__detail">Low Price</span><br>
            <span class="products__price">&#8363;<?= $productKid->price ?></span>
            <a href="/product_detail?id=<?= $productKid->id ?>" class="button products__button_detail">Product Detail</a>
            <a href="/product/add?id=<?= $productKid->id ?>" class="button products__button"
            data-id="<?= $productKid->id ?>" 
            title="Add <?= $productKid->name ?>" 
            data-name="<?= $productKid->name ?>" 
            data-return-url="<?= request()->fullUrl(); ?>"><i class='bx bx-cart-alt'></i></a>
            <a href="http://mvc.local/cart?id=<?= $productKid->id; ?>" type="button" class="btn btn-outline-dark form-control d-flex justify-content-between update_info_product" 
                        data-id="<?= $productKid->id; ?>" 
                        data-name="<?= $productKid->name ?>" 
                        data-price="<?= $productKid->price ?>"
                        data-active_size="0"
                        data-active_color = "0"
                        data-kind = "<?= $productKid->kind ?>"
                        data-name_colors="<?php foreach($colors as $color) : ?>
                                    <?php if($color->id_product == $productKid->id): ?>
                                    <?= $color->colors->name_color;?>
                                    <?php endif; ?>
                                <?php endforeach; ?>"
                        data-id_colors="<?php foreach($colors as $color) : ?>
                                    <?php if($color->id_product == $productKid->id): ?>
                                    <?= $color->colors->id;?>
                                    <?php endif; ?>
                                <?php endforeach; ?>"
                        data-quantity_left_list="<?php foreach($quantityInWarehouse as $quantityLeft) : ?>
                                    <?php if($quantityLeft->id_product == $productKid->id): ?>
                                    <?= $quantityLeft->id_product . ' ' . $quantityLeft->size . ' ' . $quantityLeft->color. ' ' . $quantityLeft->quantity; ?>
                                    <?php endif; ?>
                                <?php endforeach; ?>"
                        data-quantity="1"
                        data-img="<?= $productKid->link_image ?>"
                        data-url="<?= request()->fullUrl(); ?>" 
                        data-href="<?= request()->baseUrl(); ?>/product">
                        <i class='bx bx-cart-alt'></i>
                        </a>
        </div>
        <?php endforeach; ?>
    </div>
</section>
<!-- sepatu anak -->

<!-- sepatu wanita -->
<section class="product section bd-container" id="products">
    <span class="section-subtitle"></span>
    <h2 class="section-title">WOMAN SHOES</h2>
    <a href="/seeAllProduct?kind=woman"><button class="button" style="color: white;">See All</button></a>
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
    <a href="/seeAllProduct?kind=man"><button class="button" style="color: white;">See All</button></a>
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
<?php $this->insert('shoeStore/modal-product') ?>
<?php $this->stop(); ?>