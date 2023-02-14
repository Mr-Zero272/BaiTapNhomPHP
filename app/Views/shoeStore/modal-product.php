<!-- Modal -->
<div class="modal fade" id="modalUpdate" tabindex="-1" role="dialog" aria-labelledby="modalUpdateTitle"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <div class="">
                    <img style="width: 150px; height: 230px;" src="assets/images/thuong.jpg" alt=""
                        id="modalUpdateImage">
                </div>
                <div class="">
                    <h5 class="modal-title" id="modalUpdateNameProduct"></h5>
                    <p class="modal-title">
                        <span class="old_price" id="modalUpdateOldPrice"
                            style="text-decoration: line-through">&#8363;3333</span>
                        <span class="new_price" id="modalUpdateNewPrice">&#8363;6666</span>
                    </p>
                    <p class="modal-tittle"><span id="modalUpdateQuantityLeft">444</span> products left</p>
                </div>
                <div class="">
                    <button type="button" class="close" id="close_modal" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            </div>
            <div class="modal-body">
                <form action="/cart/update" id="update_product" method="post">
                    <input type="text" name="id" id="modalUpdateID" value="" hidden>
                    <div class="form-group mb-3">
                        <label class="form-label">Color</label>
                        <div id="modalProductColors">
                        </div>
                    </div>
                    <div class="form-group mb-3">
                        <label class="form-label">Size</label>
                        <div id="modalProductSize">
                        </div>
                    </div>
                    <div class="form-group mb-3">
                        <label class="form-label">Quantity</label>
                        <input class="form-control" type="number" name="quantity" id="modalProductQuantityInCart"
                            value="1" min="1" max="999">
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-outline-success submit_form_update"
                    form="update_product" data-url="<?= request()->fullUrl(); ?>">Save</button>
                <button type="button" class="btn btn-outline-danger" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>