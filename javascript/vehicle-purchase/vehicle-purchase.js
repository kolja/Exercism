// @ts-check

export function needsLicense(kind) {
    return Boolean(kind.match(/car|truck/));
}

export function chooseVehicle(option1, option2) {
    return `${[...arguments].sort()[0]} is clearly the better choice.`;
}

export function calculateResellPrice(originalPrice, age) {
    const discount = age < 3  ? 0.8
                   : age > 10 ? 0.5
                   :            0.7;
    return originalPrice * discount;
}
