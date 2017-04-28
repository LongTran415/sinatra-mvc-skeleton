// For inputArray = [3, 6, -2, -5, 7, 3], the output should be
// adjacentElementsProduct(inputArray) = 21.
// 7 and 3 produce the largest product.
input = [9, 5, 10, 2, 24, -1, -48]

function adjacentElementsProduct(inputArray) {
 var products = [];
  for (var i = 0; i < inputArray.length; i++) {
    // use the firstNum to loop through the array multipling each number in suscession
    // store each product in an array and return the max 
    multi = inputArray[i] * inputArray[i + 1];
    products.push(multi);
    products.sort(function(a,b){
      return b - a 
    })
  }
  return products[0]
}

adjacentElementsProduct(input)

// Below we will define an n-interesting polygon. Your task is to find the area of a polygon for a given n.

// A 1-interesting polygon is just a square with a side of length 1. An n-interesting polygon is obtained by taking the n - 1-interesting polygon and appending 1-interesting polygons to its rim, side by side. You can see the 1-, 2-, 3- and 4-interesting polygons in the picture below.


function shapeArea(n) {
 const sideLength = 1;
 const area = (n - 1) * (n * 2) + sideLength;

 return area   ;
}

var input = 3
shapeArea(input)

// Ratiorg got statues of different sizes as a present from CodeMaster for his birthday, each statue having an non-negative integer size. Since he likes to make things perfect, he wants to arrange them from smallest to largest so that each statue will be bigger than the previous one exactly by 1. He may need some additional statues to be able to accomplish that. Help him figure out the minimum number of additional statues needed.

// find the largest number in the array 
// create another array with the range of 1...max
// count each number added to the array
// subtract the orignal numbers and get the length 

// edge cases: duplicate values, all the same value
function checkConsecutive(array) {
  var isConsecutive = false;
  var max = array[-1];

  for (var i = 1; i <= max; i++) {
    if (array[i] - 1 !== array[i-1] + 2) {
      return isConsecutive = true;
    } else {
      return isConsecutive = false;
    }
  };
};

array = [4,5,6];
checkConsecutive(array);

function makeArrayConsecutive2(statues) {
  var sorted = statues.sort(function(a,b){
        return a - b;
  });
};

 // let fullRange = [];

  
  
  // const max = sorted[0];
  

  //   for (var i = 1; i <= max; i++) {
  //     if (sorted[i] - 1 !== sorted[i-1] + 2){
  //       fullRange.push(i);
          
  //       fullRange = fullRange.filter( function( el ) {
  //         return sorted.indexOf( el ) < 0;
  //       } );

  //     } else {
  //       const noSteps = 0;
  //       return noSteps;
  //     };
  //   };
  // return fullRange.length;
