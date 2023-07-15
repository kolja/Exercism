
export function totalBirdCount(birdsPerDay) {
    return birdsPerDay.reduce((bird, acc) => bird + acc);
}

export function birdsInWeek(birdsPerDay, week) {
    const idx = week - 1;
    return totalBirdCount(birdsPerDay.slice(idx * 7, idx * 7 + 7));
}

export function fixBirdCountLog(birdsPerDay) {
    // tests call for mutating the array, so this won't work:
    // birdsPerDay.map((bird, idx) => idx % 2 == 0 ? bird + 1 : bird);

    for (let i = 0; i < birdsPerDay.length; i+=2 ) birdsPerDay[i] += 1;
    return birdsPerDay;
}
