// @ts-check

function toNum(ary) {
    return Number(ary.join(''))
}

function reverse(str) {
    return str.split('').reverse().join('')
}

export function twoSum(array1, array2) {
    return toNum(array1) + toNum(array2);
}

export function luckyNumber(value) {
    const str = String(value)
    return str === reverse(str)
}

export function errorMessage(input) {
    const num = Number(input)
    if (!input) return 'Required field'
    else if (isNaN(num) || num === 0) return 'Must be a number besides 0'
    return ''
}
