// @ts-check

const HOURS_PER_DAY = 8;
const HOURS_PER_MONTH = 22 * HOURS_PER_DAY;

export function dayRate(ratePerHour) {
    return HOURS_PER_DAY * ratePerHour;
}

export function daysInBudget(budget, ratePerHour) {
    return Math.floor( budget / dayRate(ratePerHour) );
}

export function priceWithMonthlyDiscount(ratePerHour, numDays, discount) {
    let months_total = Math.floor( numDays / 22 ) * HOURS_PER_MONTH * ratePerHour
    let day_total = numDays % 22 * dayRate(ratePerHour);

    return Math.ceil( months_total * (1 - discount) + day_total);
}
