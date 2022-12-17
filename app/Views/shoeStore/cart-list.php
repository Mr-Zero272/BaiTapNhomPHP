<div class="cart-list list" id="io">
    <table class="table table-striped table-hover" id="oo">
        <thead>
            <tr>
                <th scope="col">#No</th>
                <th scope="col">ID Product</th>
                <th scope="col">Product name</th>
                <th scope="col">Price</th>
                <th scope="col">Quantity</th>
                <th scope="col">Size</th>
                <th scope="col">Img</th>
                <th colspan="2" scope="col" style="text-align: center;">Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php $start = 1;
            $total = 0;
            ?>
            <?php foreach ($products as $product): ?>
            <tr>
                <th scope="row">
                    <input class="form-check-input" type="checkbox" name="<?= $product->id; ?>" id="<?= $product->id; ?>">
                </th>
                <td>
                    <?= $product->id_product; ?>
                </td>
                <td>
                    <?= $product->product->name; ?>
                </td>
                <td>&#8363 <?= $product->product->price; ?>
                </td>
                <td>
                    <input class="form-control quantity" type="number" name="update_quantity"
                        value="<?= $product->quantity; ?>" min="1" max="100" data-id="<?= $product->id; ?>"
                        data-url="<?= request()->fullUrl(); ?>" data-href="<?= request()->baseUrl(); ?>/cart/updateQuantity">
                </td>
                <td>
                    <input type="hidden" name="update_quantity_id" value="<?= $product->id_product ?>">
                    <select class="form-select select_size" aria-label="Default select example" data-id="<?= $product->id; ?>"
                        data-url="<?= request()->fullUrl(); ?>" data-href="<?= request()->baseUrl(); ?>/cart/updateSize">
                        <?php if ($product->product->kind === 'kid'): ?>
                            <?php for ($i = 25; $i < 34; $i++): ?>
                                <?php if ($i == $product->sizes->size): ?>
                                    <option value="<?= $i - 24 ?>" selected><?= $i ?></option>
                                <?php else: ?>
                                    <option value="<?= $i - 24 ?>"><?= $i ?></option>
                                <?php endif; ?>
                            <?php endfor; ?>
                        <?php elseif ($product->product->kind === 'woman'): ?>
                            <?php for ($i = 35; $i < 40; $i++): ?>
                                <?php if ($i == $product->sizes->size): ?>
                                    <option value="<?= $i - 24 ?>" selected><?= $i ?></option>
                                <?php else: ?>
                                    <option value="<?= $i - 24 ?>"><?= $i ?></option>
                                <?php endif; ?>
                            <?php endfor; ?>
                        <?php else: ?>
                            <?php for ($i = 39; $i < 46; $i++): ?>
                                <?php if ($i == $product->sizes->size): ?>
                                    <option value="<?= $i - 24 ?>" selected><?= $i ?></option>
                                <?php else: ?>
                                    <option value="<?= $i - 24 ?>"><?= $i ?></option>
                                <?php endif; ?>
                            <?php endfor; ?>
                        <?php endif; ?>
                    </select>
                </td>
                <td> <img src="<?= $product->product->link_image; ?>" style="width:70px; height:90px;"> </td>
                <td style="text-align: center;">
                    <a class="remove-product delete"
                        href="<?= request()->baseUrl(); ?>/cart/delete?id=<?= $product->id; ?>"
                        data-id="<?= $product->id; ?>" title="Delete <?= $product->product->name; ?>"
                        data-name="<?= $product->product->name; ?>" data-return-url="<?= request()->fullUrl(); ?>">
                        <div class="btn btn-warning">Remove</div>
                    </a>
                </td>
            </tr>
            <input hidden type="number" value="<?= $total += $product->product->price * $product->quantity; ?>">
            <?php endforeach; ?>
            <tr>
                <th>
                    <?= $start ?>
                </th>
                <td scope="row"><a href="/product" class="btn btn-warning">Continue shopping</a></td>
                <td colspan="5">
                    Total: &#8363 <?= $total; ?>
                </td>
                <div hidden>
                    <?= $id_user=auth()->id ?>
                </div>
                <td style="text-align: center;">
                    <a class="checkout delete buy-btn btn btn-success" href="<?= request()->baseUrl(); ?>/cart/checkout"
                        data-id="<?= $id_user ?>" data-return-url="<?= request()->fullUrl(); ?>">
                        Check out
                    </a>
                </td>
            </tr>
        </tbody>
    </table>
</div>