<?php $this->layout(config('view.layout')) ?>

<?php $this->start('page') ?>
<!-- <div class="section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h3>List of products</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-12" id="cart-list">
            <?php $this->insert('shoeStore/cart-list', [
                    'products' => $products,
                ]);
                ?>
            </div>
        </div>
    </div>
</div> -->
<div class="container " style="margin-top: 90px" id="cart-list">
    <?php foreach ($products as $product): ?>
    <div class="container">
        <div class="card mb-3 card_product_in_cart">
            <div class="row no-gutters">
                <div class="col-1">
                    <input type="checkbox" name="checked_product" id="" class="form-check-input check_out" 
                    data-price="<?= $product->product->price; ?>"
                    data-quantity="<?= $product->quantity; ?>"
                    data-id_product_in_cart="<?= $product->id; ?>">
                </div>
                <div class="col-4">
                    <img src="<?= $product->product->link_image ?>" id="main-img" class="card-img" alt="..." style="height: 250px; width: 190px;">
                </div>
                <div class="col-6">
                    <div class="card-body">
                        <h4 class="card-title"><?= $product->product->name; ?></h4>
                        <input type="text" name="id" hidden value="2">
                        <label for="size" class="form-label" style="font-weight: 700;">Classify:</label>
                        <a href="http://mvc.local/cart?id=<?= $product->product->id; ?>" type="button" class="btn btn-outline-dark form-control d-flex justify-content-between update_info_product" 
                        data-id="<?= $product->id; ?>" 
                        data-name="<?= $product->product->name ?>" 
                        data-price="<?= $product->product->price ?>"
                        data-active_size="<?= $product->size ?>"
                        data-active_color = "<?= $product->color ?>"
                        data-kind = "<?= $product->product->kind ?>"
                        data-name_colors="<?php foreach($colors as $color) : ?>
                                    <?php if($color->id_product == $product->id_product): ?>
                                    <?= $color->colors->name_color;?>
                                    <?php endif; ?>
                                <?php endforeach; ?>"
                        data-id_colors="<?php foreach($colors as $color) : ?>
                                    <?php if($color->id_product == $product->id_product): ?>
                                    <?= $color->colors->id;?>
                                    <?php endif; ?>
                                <?php endforeach; ?>"
                        data-quantity_left_list="<?php foreach($quantityInWarehouse as $quantityLeft) : ?>
                                    <?php if($quantityLeft->id_product == $product->id_product): ?>
                                    <?= $quantityLeft->id_product . ' ' . $quantityLeft->size . ' ' . $quantityLeft->color. ' ' . $quantityLeft->quantity; ?>
                                    <?php endif; ?>
                                <?php endforeach; ?>"
                        data-quantity="<?= $product->quantity; ?>"
                        data-img="<?= $product->product->link_image ?>"
                        data-url="<?= request()->fullUrl(); ?>" 
                        data-href="<?= request()->baseUrl(); ?>/cart">
                            <span class="classify" id="classify">Classify: <?= $product->colors->name_color; ?>, <?= $product->sizes->size ?></span>
                            <span><i class="fa-sharp fa-solid fa-chevron-down"></i></span>
                        </a>
                        <p class="card-text">
                            <span class="old_price" style="text-decoration: line-through">&#8363;<?= $product->product->price + $product->product->price * 0.3; ?></span>
                            <span class="new_price">&#8363;<?= $product->product->price; ?></span>
                        </p>
                        <input class="quantity" type="number" name="update_quantity"
                        value="<?= $product->quantity; ?>" min="1" max="100" data-id="<?= $product->id; ?>"
                        data-url="<?= request()->fullUrl(); ?>" data-href="<?= request()->baseUrl(); ?>/cart/updateQuantity">
                        <p class="card-text"><small class="text-muted"><?= $product->quantityLeft->quantity ?> products left</small></p>
                    </div>
                </div>
                <div class="col-1">
                    <a class="remove-product delete_product_btn"
                        href="<?= request()->baseUrl(); ?>/cart/delete?id=<?= $product->id; ?>"
                        data-id="<?= $product->id; ?>" title="Delete <?= $product->product->name; ?>"
                        data-name="<?= $product->product->name; ?>" data-return-url="<?= request()->fullUrl(); ?>">
                        <i class="far fa-trash-alt "></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <?php endforeach;?>


    
    

    <nav class="navbar fixed-bottom navbar-expand-sm navbar-light bg-light">
        <div class="container">
            <div>
                <input type="checkbox" name="all_product" id="all_product" class="form-check-input">
                <label for="all_product">All product</label>
            </div>
            <div class="total" >
                Total cost: <span id="totalCost">0</span>&#8363;
            </div>
            <div class="btn btn-outline-danger">
                Check out
            </div>
        </div>
    </nav>
</div>
<?php $this->insert('shoeStore/modal-product') ?>
<?php $this->stop() ?>