let VNDong = new Intl.NumberFormat('vi-VN', {
    style: 'currency',
    currency: 'VND',
});

let colorCheckbox = document.querySelectorAll('.color-checkbox');
let colorValue = document.querySelectorAll('.color-checkbox-value');
let sizeCheckbox = document.querySelectorAll('.size-checkbox');
let sizeValue = document.querySelectorAll('.size-checkbox-value');


// ShoesStoreVoucher
let shoesStoreVoucherShipCheck = document.querySelectorAll('.shoesStoreVoucherShip-check');
let boxShoesStoreVoucherShipCheck = document.querySelectorAll('.box-voucher-shoeStore-voucher-ship');

function checkRadio(check, checkValue){
    let j = 0;
    let boolChecked = false;
    for (; j < check.length; j++)
    {
        if(check[j].classList.contains('active'))
        {
            boolChecked = true;
        }
    }
    if (!boolChecked)
    {
        check[0].classList.add('active');
        checkValue[0].checked = true;
    }
}


colorCheckbox.forEach(function(item, index){
    item.addEventListener('click', function(event){
        item.classList.toggle('active');
        checkRadio(colorCheckbox, colorValue);
        if(item.classList.contains('active'))
        {
            colorValue[index].checked = true;
            var i = 0;
            for(; i < colorCheckbox.length; i++)
            {
                if(i == index) continue;
                colorCheckbox[i].classList.remove('active');
            }
        }
        else
        {
            colorValue[index].checked = false;
        }
    })
})

sizeCheckbox.forEach(function(item, index){
    item.addEventListener('click', function(event){
        item.classList.toggle('active');
        checkRadio(sizeCheckbox, sizeValue);
        if(item.classList.contains('active'))
        {
            sizeValue[index].checked = true;
            var i = 0;
            for(; i < sizeCheckbox.length; i++)
            {
                if(i == index) continue;
                sizeCheckbox[i].classList.remove('active');
            }
        }
        else
        {
            sizeValue[index].checked = false;
        }
    })
})

$(document).ready(function () {

    // Khi nhấn vào nút delete bất kỳ trên danh sách
    $(document).on('click', '.update', function (event) {
        // stop chuyen link khi nhấn vào thẻ <a>
        event.preventDefault();
        // hiển thị Sweetaler2 và xoá bằng ajax 
        // hoặc uncomment showModalConfirm() để xoá theo kiểu bình thường
        //ajaxUpdate(event.currentTarget);
        //alert("Hello");
        // hoặc sử dụng Bootstrap Modal
        $('#modalUpdate').modal('show'); 
        //showModalConfirm(event.currentTarget); // lấy phần tử <a> vừa được click
    })
});

//tong tien san pham chua giam gia
var price = document.querySelectorAll('.new_price');
let totalF = 0;

price.forEach((item, index) => {
    temp = item.textContent.slice(1).split('.').join('');
    totalF += parseInt(temp);
})


let shopsVoucherCheck = document.querySelectorAll('.shopsVoucher-check');
let boxVoucher = document.querySelectorAll('.box_voucher');
let shopsVoucherChosen = document.querySelector('#shopsVoucherChosen');
let shopsVoucher;

shopsVoucherCheck.forEach((item, index) => {
    item.addEventListener('click', event =>{
        shopsVoucher = $('input[name=shopsVoucher]:checked').val();
        let temp = totalF * parseFloat(shopsVoucher);
        if(temp > 50000) temp = 50000;
        if(boxVoucher[index].classList.contains('border-danger'))
        {
            item.checked = false;
            boxVoucher[index].classList.remove('border-danger');
            shopsVoucherChosen.innerHTML = `Choose voucher`;
        } else {
            boxVoucher[index].classList.add('border-danger');
            shopsVoucherChosen.innerHTML = `-` + temp/1000 + `k &#8363;`;
            printTotalWithoutVoucher();
            for(let i = 0; i < boxVoucher.length; i++)
            {
                if(i == index) continue;
                boxVoucher[i].classList.remove('border-danger');
            }
        }
    })
});

function checkIfChecked(arrayRadio){
    var z = 0;
    for (; z < arrayRadio.length; z++)
    {
        if (arrayRadio[z].checked === true){
            return true;
        }
    }
    return false;
}

function calculatorShipping(){
    let transportFeeChosen = $('input[name=shippingUnit]:checked').val();
    let tempValue = $('input[name=shoesStoreVoucherShip]:checked').val().split('&');
    transportFeeNew.innerHTML = '&#8363;' + (parseFloat(transportFeeChosen) - parseFloat(transportFeeChosen) * parseFloat(tempValue[0])) + 'k';
}

let shippingUnitCheck = document.querySelectorAll('.shipping-unit-check');
let boxShippingUnit = document.querySelectorAll('.box-shipping-unit');
let nameShippingUnit = document.querySelector('#name-shopping-unit');
let timeReceiveGoods = document.querySelector('#time-receive-goods');
let transportFeeOld = document.querySelector('#transport-fee-old');
let transportFeeNew = document.querySelector('#transport-fee-new');
let modalNameShippingUnit = document.querySelectorAll('.modal-name-shopping-unit');
let modalTimeReceiveGoods = document.querySelectorAll('.modal-time-receive-goods');
let modalTransportFee = document.querySelectorAll('.modal-transport-fee');
printTotalWithoutVoucher()
shippingUnitCheck.forEach((item, index) => {
    item.addEventListener('click', event =>{
        shopsVoucher = $('input[name=shopsVoucher]:checked').val();
        if(boxVoucher[index].classList.contains('border-danger'))
        {
            item.checked = false;
            boxShippingUnit[index].classList.remove('border-danger');
        } else {
            boxShippingUnit[index].classList.add('border-danger');
            nameShippingUnit.innerHTML = modalNameShippingUnit[index].textContent;
            timeReceiveGoods.innerHTML = modalTimeReceiveGoods[index].textContent;
            //transportFeeOld.innerHTML = modalTransportFeeOld[index].textContent;
            if (transportFeeOld.textContent != '') transportFeeOld.innerHTML = modalTransportFee[index].textContent;
            else transportFeeNew.innerHTML = modalTransportFee[index].textContent;
            if (checkIfChecked(shoesStoreVoucherShipCheck) !== false)
            {
                calculatorShipping();
            }
            printTotalWithoutVoucher();
            for(let i = 0; i < boxShippingUnit.length; i++)
            {
                if(i == index) continue;
                boxShippingUnit[i].classList.remove('border-danger');
            }
        }
    })
});

function printTotalWithoutVoucher(){
    let totalWithoutVoucher = document.querySelector('#total-cost-without-voucher');
    let transportFee = parseInt(transportFeeNew.textContent.slice(1, transportFeeNew.textContent.length - 1));
    let voucherFee;
    if (shopsVoucherChosen.textContent == 'Choose voucher') 
        voucherFee = 0;
    else
        voucherFee = parseFloat(shopsVoucherChosen.textContent.slice(2, shopsVoucherChosen.textContent.length -1));
    totalWithoutVoucher.innerHTML = VNDong.format(totalF + transportFee * 1000 - voucherFee * 1000);
}


// let shoesStoreVoucherShipCheck = document.querySelectorAll('.shoesStoreVoucherShip-check');
// let boxShoesStoreVoucherShipCheck = document.querySelectorAll('.box-voucher-shoeStore-voucher-ship');

shoesStoreVoucherShipCheck.forEach((item, index) => {
    item.addEventListener('click', event =>{
        if(boxShoesStoreVoucherShipCheck[index].classList.contains('border-danger'))
        {
            transportFeeNew.innerHTML = '&#8363;' + $('input[name=shippingUnit]:checked').val() + 'k';
            transportFeeOld.innerHTML = '';
            item.checked = false;
            boxShoesStoreVoucherShipCheck[index].classList.remove('border-danger');
        } else {
            boxShoesStoreVoucherShipCheck[index].classList.add('border-danger');
            transportFeeOld.innerHTML = '&#8363;' + $('input[name=shippingUnit]:checked').val() + 'k';
            // let transportFeeChosen = transportFeeOld.textContent.slice(1, transportFeeOld.textContent.length - 1);
            // let tempValue = $('input[name=shoesStoreVoucherShip]:checked').val().split('&');
            // transportFeeNew.innerHTML = '&#8363;' + (parseFloat(transportFeeChosen) * parseFloat(tempValue[0])) + 'k';
            calculatorShipping();
            printTotalWithoutVoucher();
            for(let i = 0; i < boxShoesStoreVoucherShipCheck.length; i++)
            {
                if(i == index) continue;
                boxShoesStoreVoucherShipCheck[i].classList.remove('border-danger');
            }
        }
    })
});


// const pricei = 14354636534540;

// Format the price above to USD using the locale, style, and currency.

// console.log(`The formated version of ${pricei} is ${VNDong.format(pricei)}`);
// The formated version of 14340 is $14,340.00