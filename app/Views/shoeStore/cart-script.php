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

    // $("#opp").bind('change', function () {
    //     var b = $("#opp").val();
    //     alert("Changed! Value = " + b);
    // });

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
        //alert(Math.trunc(id/100)*100 + parseInt(size));
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



    $(document).ready(function () {

        // Khi nhấn vào nút delete bất kỳ trên danh sách
        $(document).on('click', '.update_info_product, .add_product', function (event) {
            // stop chuyen link khi nhấn vào thẻ <a>
            event.preventDefault();
            // hiển thị Sweetaler2 và xoá bằng ajax 
            // hoặc uncomment showModalConfirm() để xoá theo kiểu bình thường
            //ajaxUpdate(event.currentTarget);
            // hoặc sử dụng Bootstrap Modal
            //$('#modalUpdate').modal();
            //ajaxUpdatez(event.currentTarget);
            showModalConfirm(event.currentTarget); // lấy phần tử <a> vừa được click
        })
    });

    function showModalConfirm(e) {
        // pass các ID và Return URL qua form trong Modal
        // lấy url trong thẻ <a> gán vào action của form
        //let url = $(e).data('href');
        //$("#update_product").prop('action', url);

        // lấy thuộc tính data-id="" trong thẻ <a> gán vào hidden input trên form trong modal
        //$("#modalUpdateNameProduct").text($(e).data('colors'));
        var strIdColor = $(e).data('id_colors');
        var strNameColor = $(e).data('name_colors');
        var activeColor = $(e).data('active_color');
        //a = a.replaceAll(/ /g,'');
        strIdColor = strIdColor.replace(/\s+/g, ' ').trim(); //Tim va thay the cac khoang trang lien tiep bang 1 khoang trang
        strNameColor = strNameColor.replace(/\s+/g, ' ').trim(); //Tim va thay the cac khoang trang lien tiep bang 1 khoang trang
        

        var arrIDColor = strIdColor.split(" ");
        var arrNameColor = strNameColor.split(" ");

        $("#modalUpdateNameProduct").text($(e).data('name'));
        $("#modalUpdateID").val($(e).data('id'));
        //var productColors = $("#product_colors");
        var productColors = document.querySelector('#modalProductColors');
        var strColor = '';
        for (let i = 0; i < arrIDColor.length; i++) {
            if (arrIDColor[i] == activeColor)
                strColor += '<div class="btn btn-outline-dark color-checkbox active">' + arrNameColor[i] + '</div> ' +
                    ' <input type="radio" name="color" id="" class="color-checkbox-value" hidden value="' + arrIDColor[i] + '" checked> ';
            else
                strColor += '<div class="btn btn-outline-dark color-checkbox">' + arrNameColor[i] + '</div> ' +
                    ' <input type="radio" name="color" id="" class="color-checkbox-value" hidden value="' + arrIDColor[i] + '"> ';
        }
        //console.log(strColor);
        productColors.innerHTML = strColor;


        //send size to modal
        var activeSize = $(e).data('active_size');
        var kindProdcut = $(e).data('kind');

        // kind = kid -> size 1->9 ----> 25 -> 33
        // kind = woman -> size 10->14 ----> 35 -> 39 (no size 34)
        // kind = man -> size 14->20 ----> 39 -> 45
        var productSizes = document.querySelector('#modalProductSize');
        var strSize = '';

        if (kindProdcut == 'kid') {
            for (let i = 1; i < 10; i++) {
                if (i == activeSize)
                    strSize += '<div href="" class="btn btn-outline-dark size-checkbox active">' + (24 + i) + '</div>' +
                        ' <input type="radio" name="size" id="" class="size-checkbox-value" hidden value="' + i + '" checked>'
                else
                    strSize += '<div href="" class="btn btn-outline-dark size-checkbox">' + (24 + i) + '</div>' +
                        ' <input type="radio" name="size" id="" class="size-checkbox-value" hidden value="' + i + '">'
            }
        } else if (kindProdcut == 'woman') {
            for (let i = 10; i < 15; i++) {
                if (i == activeSize)
                    strSize += '<div href="" class="btn btn-outline-dark size-checkbox active">' + (25 + i) + '</div>' +
                        ' <input type="radio" name="size" id="" class="size-checkbox-value" hidden value="' + i + '" checked>'
                else
                    strSize += '<div href="" class="btn btn-outline-dark size-checkbox">' + (25 + i) + '</div>' +
                        ' <input type="radio" name="size" id="" class="size-checkbox-value" hidden value="' + i + '">'
            }
        } else {
            for (let i = 14; i < 21; i++) {
                if (i == activeSize)
                    strSize += '<div href="" class="btn btn-outline-dark size-checkbox active">' + (25 + i) + '</div>' +
                        ' <input type="radio" name="size" id="" class="size-checkbox-value" hidden value="' + i + '" checked>'
                else
                    strSize += '<div href="" class="btn btn-outline-dark size-checkbox">' + (25 + i) + '</div>' +
                        ' <input type="radio" name="size" id="" class="size-checkbox-value" hidden value="' + i + '">'
            }
        }
        productSizes.innerHTML = strSize;


        
        function printProductLeft(){
            var strQuantityLeft = $(e).data('quantity_left_list');
            strQuantityLeft = strQuantityLeft.replace(/\s+/g, ' ').trim(); //Tim va thay the cac khoang trang lien tiep bang 1 khoang trang
            var arrQuantityLeft = strQuantityLeft.split(" ");
            var size = $('input[name=size]:checked', '#update_product').val();
            var color = $('input[name=color]:checked', '#update_product').val();
            for (let i = 0; i < arrQuantityLeft.length; i += 4)
            {
                if(arrQuantityLeft[i+1] == size && arrQuantityLeft[i+2] == color)
                {
                    $('#modalUpdateQuantityLeft').text(arrQuantityLeft[i+3]);
                    break;
                }
            }
        }
        printProductLeft();



        //send quantity to modal
        // var quantityProductInCart = document.querySelector('#modalProductQuantityInCart');
        // quantityProductInCart.value = $(e).data('quantity');
        $('#modalProductQuantityInCart').val($(e).data('quantity'));

        let colorCheckbox = document.querySelectorAll('.color-checkbox');
        let colorValue = document.querySelectorAll('.color-checkbox-value');
        let sizeCheckbox = document.querySelectorAll('.size-checkbox');
        let sizeValue = document.querySelectorAll('.size-checkbox-value');


        if (parseInt(activeColor) == 0)
        {
            checkRadio(colorCheckbox, colorValue);
            checkRadio(sizeCheckbox, sizeValue);
        }

        function checkRadio(check, checkValue) {
            let j = 0;
            let boolChecked = false;
            for (; j < check.length; j++) {
                if (check[j].classList.contains('active')) {
                    boolChecked = true;
                }
            }
            if (!boolChecked) {
                check[0].classList.add('active');
                checkValue[0].checked = true;
                printProductLeft();
            }
        }


        colorCheckbox.forEach(function (item, index) {
            item.addEventListener('click', function (event) {
                item.classList.toggle('active');
                checkRadio(colorCheckbox, colorValue);
                if (item.classList.contains('active')) {
                    colorValue[index].checked = true;
                    printProductLeft();
                    var i = 0;
                    for (; i < colorCheckbox.length; i++) {
                        if (i == index) continue;
                        colorCheckbox[i].classList.remove('active');
                    }
                }
                else {
                    colorValue[index].checked = false;
                }
            })
        })

        sizeCheckbox.forEach(function (item, index) {
            item.addEventListener('click', function (event) {
                item.classList.toggle('active');
                checkRadio(sizeCheckbox, sizeValue);
                if (item.classList.contains('active')) {
                    sizeValue[index].checked = true;
                    printProductLeft();
                    var i = 0;
                    for (; i < sizeCheckbox.length; i++) {
                        if (i == index) continue;
                        sizeCheckbox[i].classList.remove('active');
                    }
                }
                else {
                    sizeValue[index].checked = false;
                }
            })
        })
        //$color = ColorPoduct::find(1);
        //$("#modalUpdateNameProduct").text($color->id_color);
        var oldPrice = $(e).data('price');
        oldPrice += oldPrice * 0.3;
        $("#modalUpdateOldPrice").text(oldPrice);
        $("#modalUpdateNewPrice").text($(e).data('price'));
        //$("#modalUpdateImage").attr('src', $(e).data('img'));

        $('#modalUpdate').modal('show');
    }

    $(document).ready(function () {

        // Khi nhấn vào nút delete bất kỳ trên danh sách
        $(document).on('click', '.submit_form_update', function (event) {
            // stop chuyen link khi nhấn vào thẻ <a>
            event.preventDefault();
            $('#modalUpdate').modal('hide');
            // alert($('input[name=color]:checked', '#update_product').val());
            // console.log(a);
            ajaxUpdatez(event.currentTarget);
        })
    });

    function ajaxUpdatez(e) {
        var url = '';
        var update = false;
        if ($(e).data('url') == 'http://mvc.local/product'){
            console.log($(e).data('url') + '/add');
            url = $(e).data('url') + '/add';    
            update = false;
        } else {
            url = 'http://mvc.local/cart/update';
            update = true;
        }
        var id = $('#modalUpdateID').val();
        var size = $('input[name=size]:checked', '#update_product').val();
        var color = $('input[name=color]:checked', '#update_product').val();
        var quantity = $('#modalProductQuantityInCart').val();
        //var nameColor = $('div.color-checkbox.active', '#update_product').text();
        //var namesize = $('div.size-checkbox.active', '#update_product').text();
        $.ajax({
            method: "POST",
            url: url,
            data: {
                id: id,
                size: size,
                color: color,
                quantity: quantity
            }
        }).done(function (response) { // nếu xoá thành công

            // delete dòng vừa xoá trên trang hoặc có thể
            // load lại danh sách theo cách bên dưới
            //$(e).closest('tr').remove();

            // Gọi hàm reloadWardList để load lại danh sách trên form
            let reload_url = 'http://mvc.local/cart';
            $("#quantity_cart").load(reload_url + " #quantity_cart");
            if(update)
            {
                $("#cart-list").load(reload_url + " #cart-list");
                toastr.success("Product has been updated successfully!", "Success");
            } else {
                toastr.success("Product has been added successfully!", "Success");
            }
        }).fail(function (response) { // nếu thất bại
            Swal.fire(
                'Error',
                response.responseJSON.message,
                'error'
            )
        });
    }

    function printTotal() {
        var total = 0;
        $("input[name=checked_product]").each(function (i, el) {

            if ($(el).is(":checked")) {

                total += parseInt($(el).data('price')) * parseInt($(el).data('quantity'));
                //console.log(total);
                // UPDATE:
            }
        });
        $('#totalCost').text(total);
    }

    //$('#totalCost').text('0');
    $(document).ready(function () {
        $(document).on('click', '.check_out', function (event) {
            //var a = parseInt($('#totalCost').text());
            document.querySelector('#all_product').checked = false;
            if (event.target.checked == true) {
                //a += parseInt($(event.target).data('price'));
                //printTotal(a);
                printTotal();
            } else {
                //a -= $(event.target).data('price');
                //printTotal(a);
                printTotal();
            }
        })
    });


    $(document).ready(function () {
        $(document).on('click', '#all_product', function (event) {
            var checkItems = document.querySelectorAll('.check_out');
            if (event.target.checked == true) {
                checkItems.forEach(element => {
                    element.checked = true;
                });
                printTotal();
            } else {
                checkItems.forEach(element => {
                    element.checked = false;
                });
                printTotal();
            }
        })
    });
</script>