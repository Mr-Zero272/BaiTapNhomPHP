<?php $this->layout(config('view.layout')) ?>

<?php $this->start('page') ?>

<div class="container d-flex justify-content-center" style="margin-top: 90px">
    <div class="card mb-3" style="max-width: 940px;">
        <div class="row no-gutters">
            <div class="col-md-4">
                <img src="<?= $detail->link_image_1 ?>" id="main-img"
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
                        Old price: <span class="old_price" style="text-decoration: line-through"> <?= $detail->product->price + $detail->product->price * 0.5 ?></span>
                        New price: <span class="new_price"><?= $detail->product->price ?></span> 
                    </p>
                    <p class="card-text">Stay on your feet, so that you can take on today's quick 2-miler and bounce back in time for a 
                        longer run tomorrow. A wider forefoot and higher foam stacks add super-soft cushioning, giving you the peace of 
                        mind to pound the pavement every day. The springy responsiveness adds an element of speed to our most tested shoe 
                        to help you go faster and farther. It's a radiant, empowering twist on a running essential, inspired by our human 
                        pacers who inspire through connection.</p>
                    <p class="card-text"><small class="text-muted">You can adjust the quantity in the cart.</small></p>
                    <a href="/product/add?id=<?= $detail->id ?>" class="btn btn-outline-primary add_from_detail"
                    data-id="<?= $detail->id ?>" 
                    title="Add <?= $detail->product->name ?>" 
                    data-name="<?= $detail->product->name ?>" 
                    data-return-url="<?= request()->fullUrl(); ?>">Add to cart <i class="fas fa-cart-arrow-down"></i></a>
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

<?php $this->stop() ?>