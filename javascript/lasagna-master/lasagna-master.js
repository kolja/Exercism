
export function cookingStatus(timer) {
    if (timer===undefined) {
        return 'You forgot to set the timer.';
    } else if (timer > 0) {
        return 'Not done, please wait.';
    } else {
        return 'Lasagna is done.'
    }
}

export function preparationTime(layers, time=2) {
    return layers.length * time
}

export function quantities(layers) {
    const count = layername => layers.filter( layer => layer === layername ).length
    return {
        noodles: count('noodles') * 50,
        sauce: count('sauce') * 0.2
    }
}

export function addSecretIngredient(friendsList, myList) {
    myList.push(friendsList.at(-1))
}

export function scaleRecipe(recipe, multiplier) {
    return Object.entries(recipe)
                 .reduce((acc, [k,v]) => ({...acc, [k]: (v/2) * multiplier}), {})
}
