// @ts-check

import { log } from 'console';

function id(x, y) {
    return `${x}|${y}`
}

export function translate2d(dx, dy) {
    return (x, y) => [x + dx, y + dy]
}

export function scale2d(sx, sy) {
    return (x, y) => [x * sx, y * sy]
}

export function composeTransform(f, g) {
    return (x, y) => g.apply(null, f(x, y))
}

export function memoizeTransform(f) {
    let mem = {}
    return (x, y) => mem[id(x,y)] ? mem[id(x,y)]
                                  : ((mem = {}) && (mem[id(x,y)] = f(x, y)))
}
