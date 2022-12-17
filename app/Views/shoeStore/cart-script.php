<script>
    $(document).ready(function () {

        // Khi nhấn vào nút delete bất kỳ trên danh sách
        $(document).on('click', '.remove-product', function (event) {
            // stop chuyen link khi nhấn vào thẻ <a>
            event.preventDefault();
            // hiển thị Sweetaler2 và xoá bằng ajax 
            // hoặc uncomment showModalConfirm() để xoá theo kiểu bình thường
            showConfirm(event.currentTarget);

            // hoặc sử dụng Bootstrap Modal
            //showModalConfirm(event.currentTarget); // lấy phần tử <a> vừa được click
        })
    });

    // hàm hiển thị thông báo SweetAlert xác nhận xoá
    function showConfirm(e) {
        Swal.fire({
            title: 'Are you sure?',
            html: "<p>Delete <b>" + $(e).data('name') + "</b></p> <p>You won't be able to revert this!</p>",
            icon: 'warning',
            showCancelButton: true,
            cancelButtonColor: '#3085d6',
            confirmButtonColor: '#d33',
            confirmButtonText: 'Confirm'
        }).then((result) => {
            if (result.isConfirmed) {
                ajaxDelete(e);
            }
        });
    }

    // hàm delete bằng Ajax
    function ajaxDelete(e) {
        var url = $(e).prop('href');
        var id = $(e).data('id');
        $.ajax({
            method: "POST",
            url: url,
            data: {
                id: id
            }
        }).done(function (response) { // nếu xoá thành công

            // delete dòng vừa xoá trên trang hoặc có thể
            // load lại danh sách theo cách bên dưới
            //$(e).closest('tr').remove();

            // Gọi hàm reloadWardList để load lại danh sách trên form
            let reload_url = $(e).data('return-url');
            // thẻ <div> chứa danh sách ward
            $("#quantity_cart").load(reload_url + " #quantity_cart");
            let target = $('#cart-list');
            $("#cart-list").load(reload_url + " #cart-list");
            //reloadWardList(reload_url, target);
            Swal.fire(
                'Deleted!',
                response.message,
                'success'
            );
        }).fail(function (response) { // nếu thất bại
            Swal.fire(
                'Error',
                response.responseJSON.message,
                'error'
            )
        });
    }

    $(document).ready(function () {

        // Khi nhấn vào nút delete bất kỳ trên danh sách
        $(document).on('click', '.checkout', function (event) {
            // stop chuyen link khi nhấn vào thẻ <a>
            event.preventDefault();
            // hiển thị Sweetaler2 và xoá bằng ajax 
            // hoặc uncomment showModalConfirm() để xoá theo kiểu bình thường
            showConfirmCheckout(event.currentTarget);

            // hoặc sử dụng Bootstrap Modal
            //showModalConfirm(event.currentTarget); // lấy phần tử <a> vừa được click
        })
    });

    function showConfirmCheckout(e) {
        Swal.fire({
            title: 'Are you sure?',
            html: "<p>Check out all products in the cart!</p> <p>You won't be able to revert this!</p>",
            icon: 'warning',
            showCancelButton: true,
            cancelButtonColor: '#3085d6',
            confirmButtonColor: '#d33',
            confirmButtonText: 'Confirm'
        }).then((result) => {
            if (result.isConfirmed) {
                ajaxCheckout(e);
            }
        });
    }

    function ajaxCheckout(e) {
        var url = $(e).prop('href');
        var id = $(e).data('id');
        $.ajax({
            method: "POST",
            url: url,
            data: {
                id: id
            }
        }).done(function (response) { // nếu xoá thành công

            // delete dòng vừa xoá trên trang hoặc có thể
            // load lại danh sách theo cách bên dưới
            //$(e).closest('tr').remove();

            // Gọi hàm reloadWardList để load lại danh sách trên form
            let reload_url = $(e).data('return-url');
            // thẻ <div> chứa danh sách ward
            $("#quantity_cart").load(reload_url + " #quantity_cart");
            let target = $('#cart-list');
            $("#cart-list").load(reload_url + " #cart-list");
            //reloadWardList(reload_url, target);
            Swal.fire(
                'Thank you!',
                response.message,
                'success'
            );
        }).fail(function (response) { // nếu thất bại
            Swal.fire(
                'Error',
                response.responseJSON.message,
                'error'
            )
        });
    }

    $("#opp").bind('change', function () {
        var b = $("#opp").val();
        alert("Changed! Value = " + b);
    });

    $(document).ready(function () {

        // Khi nhấn vào nút delete bất kỳ trên danh sách
        $(document).on('keyup mouseup', '.quantity', function (event) {
            // stop chuyen link khi nhấn vào thẻ <a>
            event.preventDefault();
            // hiển thị Sweetaler2 và xoá bằng ajax 
            // hoặc uncomment showModalConfirm() để xoá theo kiểu bình thường
            ajaxUpdateQuantity(event.currentTarget);

            // hoặc sử dụng Bootstrap Modal
            //showModalConfirm(event.currentTarget); // lấy phần tử <a> vừa được click
        })
    });

    function ajaxUpdateQuantity(e) {
        var url = $(e).data('href');
        var id = $(e).data('id');
        var quantity = $(e).prop('value');
        $.ajax({
            method: "POST",
            url: url,
            data: {
                id: id,
                quantity: quantity
            }
        }).done(function (response) { // nếu xoá thành công
            // Reload lai so luong
            let reload_url = $(e).data('url');
            // thẻ <div> chứa danh sách ward
            $("#quantity_cart").load(reload_url + " #quantity_cart");
            let target = $('#cart-list');
            $("#cart-list").load(reload_url + " #cart-list");
            //reloadWardList(reload_url, target);
            //toastr.success("Quantity has been updated successfully!", "Success");
        }).fail(function (response) { // nếu thất bại
            Swal.fire(
                'Error',
                response.responseJSON.message,
                'error'
            )
        });
    }

    $(document).ready(function () {

        // Khi nhấn vào nút delete bất kỳ trên danh sách
        $(document).on('change', '.select_size', function (event) {
            // stop chuyen link khi nhấn vào thẻ <a>
            event.preventDefault();
            // hiển thị Sweetaler2 và xoá bằng ajax 
            // hoặc uncomment showModalConfirm() để xoá theo kiểu bình thường
            ajaxUpdateSize(event.currentTarget);
            // hoặc sử dụng Bootstrap Modal
            //showModalConfirm(event.currentTarget); // lấy phần tử <a> vừa được click
        })
    });

    function ajaxUpdateSize(e) {
        var url = $(e).data('href');
        var id = $(e).data('id');
        var size = $(e).val();
        $.ajax({
            method: "POST",
            url: url,
            data: {
                id: id,
                size: size
            }
        }).done(function (response) { // nếu xoá thành công
            // Reload lai so luong
            let reload_url = $(e).data('url');
            // thẻ <div> chứa danh sách ward
            $("#quantity_cart").load(reload_url + " #quantity_cart");
            let target = $('#cart-list');
            $("#cart-list").load(reload_url + " #cart-list");
            //reloadWardList(reload_url, target);
            //toastr.success("Size has been updated successfully!", "Success");
        }).fail(function (response) { // nếu thất bại
            Swal.fire(
                'Error',
                response.responseJSON.message,
                'error'
            )
        });
    }
</script>