let colorCheckbox = document.querySelectorAll('.color-checkbox');
let colorValue = document.querySelectorAll('.color-checkbox-value');
let sizeCheckbox = document.querySelectorAll('.size-checkbox');
let sizeValue = document.querySelectorAll('.size-checkbox-value');


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