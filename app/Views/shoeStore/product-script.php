<script>
    $(document).ready(function () {

        // Khi nhấn vào nút delete bất kỳ trên danh sách
        $(document).on('click', '.products__button', function (event) {
            // stop chuyen link khi nhấn vào thẻ <a>
            event.preventDefault();
            // hiển thị Sweetaler2 và xoá bằng ajax 
            // hoặc uncomment showModalConfirm() để xoá theo kiểu bình thường
            showConfirmAdd(event.currentTarget);
            a++;
            // hoặc sử dụng Bootstrap Modal
            //showModalConfirm(event.currentTarget); // lấy phần tử <a> vừa được click
        })
    });

    $(document).ready(function () {

        // Khi nhấn vào nút delete bất kỳ trên danh sách
        $(document).on('click', '.add_from_detail', function (event) {
            // stop chuyen link khi nhấn vào thẻ <a>
            event.preventDefault();
            // hiển thị Sweetaler2 và xoá bằng ajax 
            // hoặc uncomment showModalConfirm() để xoá theo kiểu bình thường
            showConfirmAdd(event.currentTarget);

            // hoặc sử dụng Bootstrap Modal
            //showModalConfirm(event.currentTarget); // lấy phần tử <a> vừa được click
        })
    });

    // hàm hiển thị thông báo SweetAlert xác nhận xoá
    function showConfirmAdd(e) {
        Swal.fire({
            title: 'Are you sure?',
            html: "<p>Add <b>" + $(e).data('name') + "</b></p> <p>You won't be able to revert this!</p>",
            icon: 'warning',
            showCancelButton: true,
            cancelButtonColor: '#3085d6',
            confirmButtonColor: '#d33',
            confirmButtonText: 'Confirm'
        }).then((result) => {
            if (result.isConfirmed) {
                ajaxAdd(e);
            }
        });
    }

    // hàm add bằng Ajax
    function ajaxAdd(e) {
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
            let target = $('#quantity_cart');
            $("#quantity_cart").load(location.reload_url + " #quantity_cart");
            reloadWardListAdd(reload_url, target);
            Swal.fire(
                'Added!',
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

    // hàm load lại danh sách sau khi xoá
    function reloadWardListAdd(url, target) {
        $.ajax({
            method: 'GET',
            url: url
        }).done(function (response) {
            $(target).html(response.data);
        }).fail(function () {
            Swal.fire(
                'Error',
                'Unable to reload the Ward list. Try again.',
                'error'
            )
        });
    }

    function myFunction(imgitem) {
        var fullImg = document.getElementById("main-img");
        fullImg.src = imgitem.src;
    }

    $(document).ready(function () {

        // Khi nhấn vào nút delete bất kỳ trên danh sách
        $(document).on('click', '.log_out', function (event) {
            // stop chuyen link khi nhấn vào thẻ <a>
            event.preventDefault();
            // hiển thị Sweetaler2 và xoá bằng ajax 
            // hoặc uncomment showModalConfirm() để xoá theo kiểu bình thường
            showConfirmLogin(event.currentTarget);

            // hoặc sử dụng Bootstrap Modal
            //showModalConfirm(event.currentTarget); // lấy phần tử <a> vừa được click
        })
    });

    function showConfirmLogin(e) {
        Swal.fire({
            title: 'Log out?',
            html: "<p>Are you sure?</p> <p>You won't be able to revert this!</p>",
            icon: 'warning',
            showCancelButton: true,
            cancelButtonColor: '#3085d6',
            confirmButtonColor: '#d33',
            confirmButtonText: 'Confirm'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = "http://mvc.local/logout";
            }
        });
    }

</script>