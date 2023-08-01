// @ts-check

export function buildSign(occasion, name) {
  return `Happy ${occasion} ${name}!`
}

export function buildBirthdaySign(age) {
  return `Happy Birthday! What a ${age < 50 ? 'young' : 'mature'} fellow you are.`
}

export function graduationFor(name, year) {
    return `Congratulations ${name}!\nClass of ${year}`
}

function calculateCost(letters) {
    return (letters.length * 2 + 20).toFixed(2)
}

export function costOf(sign, currency) {
    return `Your sign costs ${calculateCost(sign)} ${currency}.`
}
