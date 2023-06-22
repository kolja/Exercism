const data = [
      ['', 'the horse and the hound and the horn'],
      ['belonged to', 'the farmer sowing his corn'],
      ['kept', 'the rooster that crowed in the morn'],
      ['woke', 'the priest all shaven and shorn'],
      ['married', 'the man all tattered and torn'],
      ['kissed', 'the maiden all forlorn'],
      ['milked', 'the cow with the crumpled horn'],
      ['tossed', 'the dog'],
      ['worried', 'the cat'],
      ['killed', 'the rat'],
      ['ate', 'the malt'],
      ['lay in', 'the house that Jack built.'],
].reverse()

const template = (data, first) =>
    first ? ['This is', data[1]].join(' ')
          : ['that', ...data].join(' ')

const interleave = (arr, elem) => arr.reduce((acc, el) => acc.length ? acc.concat(elem, el) : el, [])
const range = (to, from=0) => [...Array(to-from).keys()]

export const House = {
    verse: n => range(n).reverse().map(line => template(data[line], line===n-1)),
    verses: (from,to) => [].concat(...interleave(range(to+1, from).map(v => House.verse(v+from)), ''))
}