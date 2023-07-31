/// <reference path="./global.d.ts" />
//
// @ts-check

import { notify } from './notifier';
import { order } from './grocer';

export function onSuccess() {
    notify({ message: 'SUCCESS'})
}

export function onError() {
    notify({ message: 'ERROR' })
}

export function orderFromGrocer(query, onSuccessCallback, onErrorCallback) {
    order(query, onSuccessCallback, onErrorCallback)
}

export function postOrder(variety, quantity) {
    order({variety, quantity}, onSuccess, onError)
}

