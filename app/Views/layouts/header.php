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
                <li class="nav__item"><a href="AboutUs.html" class="nav__link">About</a></li>
                <li class="nav__item"><a href="/product" class="nav__link">Product</a></li>
                <li class="nav__item"><a href="Contact.html" class="nav__link">Contact</a></li>
            </ul>
        </div>
        <div class="nav_shop">
            <a href="/cart" class="btn btn-outline-dark">
                <i class="bx bxs-cart"></i>
            </a>
            <a href="#" class="nav__icon btn btn-outline-dark">
                <i class='bx bxs-user-circle'></i>
            </a>
            <div class="nav__shop-content">
                <div class="btn-checkout">

                    <?php if (auth()) : ?>
                        <li><i class='bx bxs-log-in-circle'><a href="/logout"> LOG OUT</a></i></li>
                    <?php else : ?>
                        <li><i class='bx bxs-log-in-circle'><a href="/login"> LOG IN</a></i></li>
                    <?php endif; ?>
                    <li><i class='bx bxs-sign-up-circle'><a href="/register"> REGISTER</a></i></li>
                </div>
            </div>
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