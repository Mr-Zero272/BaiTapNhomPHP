<div class="cart-list list" id="io">
    <table class="table table-striped table-hover" id="oo">
        <thead>
            <tr>
                <th scope="col">#No</th>
                <th scope="col">ID Product</th>
                <th scope="col">Product name</th>
                <th scope="col">Price</th>
                <th scope="col">Quantity</th>
                <th scope="col">Img</th>
                <th colspan="2" scope="col" style="text-align: center;">Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php $start = 1;
            $total = 0;
            ?>
            <?php foreach ($products as $product) : ?>
                <tr>
                    <th scope="row"><?= $start++; ?></th>
                    <td><?= $product->id_product; ?></td>
                    <td><?= $product->product->name; ?></td>   
                    <td>&#8363 <?= $product->product->price; ?></td>  
                    <td> 
                        <form action="/cart" method="POST">
                            <input type="hidden" name="update_quantity_id" value="<?= $product->id_product ?>">
                            <input class="form-control" type="number" name="update_quantity" value="<?= $product->quantity; ?>" min="1" max="100">
                            <input type="submit" name="btn_update_quantity" class="btn btn-success" value="Update">
                        </form>
                    </td>
                    <td> <img src="<?= $product->product->link_image; ?>" style="width:70px; height:90px;"> </td>   
                    <td style="text-align: center;">
                        <a class="remove-product delete" 
                        href="<?= request()->baseUrl(); ?>/cart/delete?id=<?= $product->id; ?>" 
                        data-id="<?= $product->id; ?>" 
                        title="Delete <?= $product->product->name; ?>" 
                        data-name="<?= $product->product->name; ?>" 
                        data-return-url="<?= request()->fullUrl(); ?>">
                        <div class="btn btn-warning">Remove</div>
                        </a>  
                    </td>
                </tr>
                <input hidden type="number" value="<?=  $total += $product->product->price * $product->quantity; ?>">
                <?php endforeach; ?>
                <tr>
                    <th><?= $start?></th>
                    <td scope="row"><a href="/product" class="btn btn-warning">Continue shopping</a></td>
                    <td colspan="4">
                        Total: &#8363 <?= $total; ?>
                    </td>
                    <div hidden> <?= $id_user = auth()->id ?></div>
                    <td style="text-align: center;">
                        <a class="checkout delete buy-btn btn btn-success" 
                        href="<?= request()->baseUrl(); ?>/cart/checkout" 
                        data-id="<?= $id_user ?>"
                        data-return-url="<?= request()->fullUrl(); ?>">
                        Check out
                        </a>  
                    </td>
                </tr>
        </tbody>
    </table>
</div>