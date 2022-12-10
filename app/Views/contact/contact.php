<?php $this->layout(config('view.layout')); ?>
<?php $this->start('page') ?>

<div style="background-color: #ABD9FF;">
    <section class="contact section bd-container" id="contact">
        <div class="contact__container bd-grid">
            <div class="contact__data">
                <span class="section-subtitle contact__initial">Let's Talk</span>
                <h2 class="section-title contact__initial">Contact Us</h2>
                <p class="contact__description">
                    If you want to buy shoes in our store, contact us and we will immediately serve you with service 24/7</p>
            </div>
        </div>
    </section>
</div>
<div class="bd-container">
    <div class="title">
        <h2>IF YOU HAVE ANY QUESTIONS, PLEASE FILL OUT THE FORM BELOW</h2>
    </div>
    <form method="post" action="/contact">
        <div class="contact-form">
            <div class="input-fields">
                <input type="name" name="name" id="name" class="input" placeholder="Name" value="" required>
                <input type="phone" name="phone" id="phone" class="input" placeholder="Phone" value="">
                <input type="address" name="address" id="address" class="input" placeholder="Address" value="" required>
            </div>
            <div class="input-fields">
                <textarea placeholder="Message" class="input" name="message" id="message" required></textarea>
                <div class="d-grid">
                    <button class="button text-uppercase fw-bold" type="submit">Send</button>
                </div>
            </div>
        </div>
    </form>
</div>

<?php $this->stop(); ?>