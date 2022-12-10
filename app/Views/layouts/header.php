<!----Scroll Top!---->
<a href="#" class="scrollTop" id="scroll-Top">
    <i class='bx bx-chevron-up scrollTop_icon'></i>
</a>
<!----Header!---->
<header class="l-header" id="header">
    <nav class="nav bd-container">
        <div class="nav__toggle" id="nav-toggle">
            <i class='bx bx-menu'></i>
        </div>
        <a href="/home" class="nav__logo">ShoesStore</a>
        <div class="nav__menu" id="nav-menu">
            <ul class="nav__list">
                <li class="nav__item"><a href="/home" class="nav__link active-link">Home</a></li>
                <li class="nav__item"><a href="/about" class="nav__link">About</a></li>
                <li class="nav__item"><a href="/product" class="nav__link">Product</a></li>
                <li class="nav__item"><a href="/contact" class="nav__link">Contact</a></li>
            </ul>
        </div>
        <div class="nav_login">
            <?php if (auth()): ?>
                <span>Hello <?= auth()->username ?></span>
            <?php endif; ?>
            <a href="/cart" class="btn btn-outline-dark cart">
                <i class="bx bxs-cart"></i>
                <span class="quantity_cart" id="quantity_cart">
                    <?php if (auth()) :?>
                    <span><?= cart() ?></span>
                    <?php else:?>
                    <span>0</span>
                    <?php endif; ?>
                </span>
            </a>
            <?php if (auth()): ?>
            <a href="/logout" class="btn btn-outline-dark log_out">
                <i class="fas fa-sign-out-alt"></i>
            </a>
            <?php else: ?>
            <a href="/login" class="btn btn-outline-dark log_in">
                <i class="fas fa-user-circle"></i>
            </a>
            <?php endif; ?>
            <a href="/register" class="btn btn-outline-dark register">
                <i class="fas fa-user-plus"></i>
            </a>
        </div>
    </nav>
</header>

<!-- <header>
    <nav class="navbar fixed-top navbar-expand-sm navbar-light bg-light">
        <div class="container">
            <a href="/home" class="navbar-brand mb-0 h1">
                ShoesStore
            </a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a href="/home" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="/about" class="nav-link">About</a>
                    </li>
                    <li class="nav-item">
                        <a href="/product" class="nav-link">Product</a>
                    </li>
                    <li class="nav-item">
                        <a href="/contact" class="nav-link">Contact</a>
                    </li>
                </ul>
                <div class="nav_shop ml-auto">
                    <a href="/cart" class="btn btn-outline-secondary">
                        <i class="bx bxs-cart"></i>
                    </a>
                    <a href="#" class="nav__icon btn btn-outline-secondary">
                        <i class='bx bxs-user-circle'></i>
                    </a>
                </div>
            </div>
        </div>
    </nav>
</header> -->