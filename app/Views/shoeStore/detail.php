<?php $this->layout(config('view.layout')) ?>

<?php $this->start('page') ?>

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

<?php $this->stop() ?>