/**
 * Credit to https://adventofcode.com/ for this exercise
 *
 * The list below provides a set of numbers. The objective is to find the two numbers that sum up to 2021.
 * After finding those numbers, multiply them and store the output in the results variable.
 */

const numbers = [1722, 920, 299, 446, 1011, 655];
let results;

// Write your code here
for (let i = 0; i < numbers.length; i++) {
  for (let j = 1; j < numbers.length - 1; j++) {
    if (numbers[i] + numbers[j] === 2021) {
      results = numbers[i] * numbers[j];
      // console.log(results);
    }
  }
}
