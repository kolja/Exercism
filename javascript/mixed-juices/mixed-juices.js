
const wedgesFromLime = {
    small: 6,
    medium: 8,
    large: 10
}

const juiceTime = {
    "Pure Strawberry Joy": 0.5,
    "Energizer": 1.5,
    "Green Garden": 1.5,
    "Tropical Island": 3,
    "All or Nothing": 5
}

export function timeToMixJuice(name) {
    return juiceTime[name] || 2.5;
}

export function limesToCut(wedgesNeeded, limes) {
    let wedges = 0;
    let total = limes.length;
    while (wedges < wedgesNeeded) wedges += wedgesFromLime[limes.shift()];
    return total - limes.length;
}

export function remainingOrders(timeLeft, orders) {
    let timePassed = 0;
    while (timePassed < timeLeft) timePassed += timeToMixJuice(orders.shift());
    return orders;
}
