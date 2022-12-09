<?php $this->layout(config('view.layout')) ?>

<?php $this->start('page') ?>
<div class="section">
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
</div>
<?php $this->stop() ?>