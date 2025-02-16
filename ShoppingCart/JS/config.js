﻿var currencyInput = document.querySelector('input[type="currency"]')
var currency = 'ZAR' // https://www.currency-iso.org/dam/downloads/lists/list_one.xml

// format inital value
onBlur({ target: currencyInput })

// bind event listeners
currencyInput.addEventListener('focus', onFocus)
currencyInput.addEventListener('blur', onBlur)


function localStringToNumber(s) {
    return Number(String(s).replace(/[^0-9.-]+/g, ""))
}

function onFocus(e) {
    e.target.value = value ? localStringToNumber(value) : ''
    var value = e.target.value;
}

function onBlur(e) {
    var value = e.target.value

    var options = {
        maximumFractionDigits: 2,
        currency: currency,
        style: "currency",
        currencyDisplay: "symbol"
    }

    e.target.value = value
        ? localStringToNumber(value).toLocaleString(undefined, options)
        : ''
}