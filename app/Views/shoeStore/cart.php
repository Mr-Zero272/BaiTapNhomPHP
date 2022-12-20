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
<div class="container d-flex flex-column justify-content-center align-items-center mb-5" style="margin-top: 90px">
    <?php foreach ($products as $product): ?>
        <div class="container d-flex flex-column justify-content-center align-items-center mb-5" style="margin-top: 90px">
        <div class="card mb-3" style="max-width: 940px;">
            <div class="row no-gutters">
                <div class="col-1">
                    <input type="checkbox" name="" id="" class="form-check-input check_out">
                </div>
                <div class="col-4">
                    <img src="assets/images/ayaka.jpg" id="main-img" class="card-img" alt="...">
                </div>
                <div class="col-7">
                    <div class="card-body">
                        <h4 class="card-title">DDDDD</h4>
                        <input type="text" name="id" hidden value="2">
                        <label for="size" class="form-label" style="font-weight: 700;">Classify:</label>
                        <button type="button" class="btn btn-outline-dark form-control d-flex justify-content-between" data-toggle="modal" data-target="#exampleModalCenter">
                            <span>Classify: RED..., 42</span>
                            <span><i class="fa-sharp fa-solid fa-chevron-down"></i></span>
                        </button>
                        <p class="card-text">
                            <span class="old_price" style="text-decoration: line-through"><span>&#8363</span>3333</span>
                            <span class="new_price"><span>&#8363</span>6666</span>
                        </p>
                        <input type="number" name="quantity" id="quantity" min="1" max="999" value="1">
                        <p class="card-text"><small class="text-muted">You can adjust the quantity in the
                                cart.</small></p>
                    </div>
                </div>
            </div>
        </div>
    </div>


    
    

    <nav class="navbar fixed-bottom navbar-expand-sm navbar-light bg-light">
        <div class="container">
            <div>
                <input type="checkbox" name="all_product" id="all" class="form-check-input">
                <label for="all">All product</label>
            </div>
            <div class="total">
                Total cost
            </div>
            <div class="btn btn-outline-danger">
                Check out
            </div>
        </div>
    </nav>
    <?php endforeach;?>
    <!-- Modal -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="">
                        <img style="width: 150px; height: 230px;"
                            src="public/assets/images/ayaka.jpg"
                            alt="">
                    </div>
                    <div class="">
                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                        <p class="modal-title">
                            <span class="old_price" style="text-decoration: line-through">&#8363;3333</span>
                            <span class="new_price">&#8363;6666</span>
                        </p>
                        <p class="modal-tittle">Kho: 444</p>
                    </div>
                    <div class="">
                        <button type="button" class="close" id="close_modal" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
                <div class="modal-body">
                    <form action="" id="update_product">
                        <div class="form-group mb-3">
                            <label class="form-label">Color</label>
                            <div>
                                <div class="btn btn-outline-dark color-checkbox active">Red</div>
                                <div class="btn btn-outline-dark color-checkbox">Blue</div>
                                <div class="btn btn-outline-dark color-checkbox">Yellow</div>
                                <input type="radio" name="color" id="" class="color-checkbox-value" hidden value="Red" checked="true">
                                <input type="radio" name="color" id="" class="color-checkbox-value" hidden value="Blue">
                                <input type="radio" name="color" id="" class="color-checkbox-value" hidden value="Yellow">
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label class="form-label">Size</label>
                            <div>
                                <div href="" class="btn btn-outline-dark size-checkbox active">25</div>
                                <div href="" class="btn btn-outline-dark size-checkbox">26</div>
                                <div href="" class="btn btn-outline-dark size-checkbox">27</div>
                                <div href="" class="btn btn-outline-dark size-checkbox">28</div>
                                <div href="" class="btn btn-outline-dark size-checkbox">29</div>
                                <div href="" class="btn btn-outline-dark size-checkbox">30</div>
                                <div href="" class="btn btn-outline-dark size-checkbox">31</div>
                                <div href="" class="btn btn-outline-dark size-checkbox">32</div>
                                <div href="" class="btn btn-outline-dark size-checkbox">33</div>
                                <input type="radio" name="size" id="" class="size-checkbox-value" hidden value="1" checked>
                                <input type="radio" name="size" id="" class="size-checkbox-value" hidden value="2">
                                <input type="radio" name="size" id="" class="size-checkbox-value" hidden value="3">
                                <input type="radio" name="size" id="" class="size-checkbox-value" hidden value="4">
                                <input type="radio" name="size" id="" class="size-checkbox-value" hidden value="5">
                                <input type="radio" name="size" id="" class="size-checkbox-value" hidden value="6">
                                <input type="radio" name="size" id="" class="size-checkbox-value" hidden value="7">
                                <input type="radio" name="size" id="" class="size-checkbox-value" hidden value="8">
                                <input type="radio" name="size" id="" class="size-checkbox-value" hidden value="9">
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label class="form-label">Quantity</label>
                            <input class="form-control" type="number" name="quantity" id="" value="1">
                        </div>
                        
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-outline-success" form="update_product">Save</button>
                    <button type="button" class="btn btn-outline-danger" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</div>

<?php $this->stop() ?>