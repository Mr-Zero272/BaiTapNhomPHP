<form class="row g-3 needs-validation" action="/product/add" method="POST" id="form_register" novalidate>
    <div class="title">
        <h3>Add New Product</h3>
        <p>
            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Optio vel quam voluptas ipsum ex vero saepe dolor veritatis molestias excepturi velit tempora quibusdam, eum minus a repudiandae eaque. Soluta, architecto?
        </p>
    </div>
    <div class="form-floating mb-3">
        <input type="id" name="id_user" value="<?= $params['id_user'] ?? null ?>" class="form-control <?= isset($errors['id_user']) ? ' is-invalid' : ''  ?>" id="id_user" placeholder="Your id" required>
        <label for="id_user">Id_user</label>
        <div class="invalid-feedback">
            <?= $errors['id'] ?? null; ?>
        </div>
    </div>
    <div class="form-floating mb-3">
        <input type="id" name="id" value="<?= $params['id'] ?? null ?>" class="form-control <?= isset($errors['id']) ? ' is-invalid' : ''  ?>" id="id" placeholder="Your id" required>
        <label for="id">Id</label>
        <div class="invalid-feedback">
            <?= $errors['id'] ?? null; ?>
        </div>
    </div>
    <div class="form-floating mb-3">
        <input type="name" name="name" value="<?= $params['name'] ?? null ?>" class="form-control <?= isset($errors['name']) ? ' is-invalid' : ''  ?>" id="name" placeholder="" required>
        <label for="name">Name</label>
        <div class="invalid-feedback">
            <?= $errors['name'] ?? null ?>
        </div>

    </div>
    <div class="form-floating mb-3">
        <input type="price" name="price" class="form-control <?= isset($errors['price']) ? ' is-invalid' : ''  ?>" id="price" placeholder="price" required>
        <label for="price">Price</label>
        <div class="invalid-feedback">
            <?= $errors['price'] ?? null ?>
        </div>
    </div>
    <div class="form-floating mb-3">
        <input type="quantity" name="quantity" class="form-control <?= isset($errors['quantity']) ? ' is-invalid' : ''  ?>" id="quantity" placeholder="Password" required>
        <label for="quantity">Quantity</label>
        <div class="invalid-feedback">
            <?= $errors['quantity'] ?? null ?>
        </div>
    </div>

    <div class="form-floating mb-3">
        <input type="link_image" name="link_image" class="form-control <?= isset($errors['link_image']) ? ' is-invalid' : ''  ?>" id="link_image" placeholder="link_image" required>
        <label for="link_image">Link_image</label>
        <div class="invalid-feedback">
            <?= $errors['link_image'] ?? null ?>
        </div>
    </div>

    <div class="form-floating mb-3">
        <input type="date" name="created_at" value="<?= $params['created_at'] ?? null ?>" class="form-control <?= isset($errors['created_at']) ? ' is-invalid' : ''  ?>" id="created_at" required>
        <label for="created_at">Created_at</label>
        <div class="invalid-feedback">
            <?= $errors['created_at'] ?? null ?>
        </div>
    </div>
    <div class="form-floating mb-3">
        <input type="date" name="updated_at" value="<?= $params['updated_at'] ?? null ?>" class="form-control <?= isset($errors['updated_at']) ? ' is-invalid' : ''  ?>" id="updated_at" required>
        <label for="updated_at">Updated_at</label>
        <div class="invalid-feedback">
            <?= $errors['updated_at'] ?? null ?>
        </div>
    </div>
    <div class="form-floating mb-3">
        <input type="date" name="deleted_at" value="<?= $params['deleted_at'] ?? null ?>" class="form-control <?= isset($errors['deleted_at']) ? ' is-invalid' : ''  ?>" id="deleted_at" required>
        <label for="deleted_at">Deleted_at</label>
        <div class="invalid-feedback">
            <?= $errors['deleted_at'] ?? null ?>
        </div>
    </div>



    <div class="form-floating">
        <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="terms" required>
            <label class="form-check-label" for="terms">
                Agree to terms and conditions
            </label>
            <div class="invalid-feedback">
                You must agree before submitting.
            </div>
        </div>
    </div>
    <div class="button">
        <button class="btn" type="submit">Save</button>
    </div>
    <p class="outer-link">
        Already have an account? <a href="login.php">Login Now</a>
    </p>
</form>