/*
U3.W8-9: Gradebook from Names and Scores

You will work with the following two variables.  The first, students, holds the names of four students.  
The second, scores, holds groups of test scores.  The relative positions of elements within the two 
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

I worked on this challenge [by myself, with:]

*/

// function Gradebook(students, scores) {
//   for (i = 0; i < students.length; i++) {
//     this[students[i]] = scores[i];
//   }
//   this.addScore = function(student, score) {
//     this[student] = score;
//   };
//   this.getAverage = function(num_array) {
//     var sum = 0;
//     for (i = 0; i < num_array.length; i++) {
//       sum += parseInt(num_array[i], 10);
//     };
//     function average() { sum/num_array.length };
//     return average();
//   };
// }

// var students = ["Joseph", "Susan", "William", "Elizabeth"];

// var scores = [ [80, 70, 70, 100],
//                [85, 80, 90, 90],
//                [75, 70, 80, 75],
//                [100, 90, 95, 85] ];



// var gradebook = new Gradebook(students,scores);






// __________________________________________
// Write your code below.






// __________________________________________
// Refactored Solution

var average = function(scoreArray){
  var sum = 0;
  for (i = 0; i < scoreArray.length; i++ ) {
    sum += scoreArray[i];
  }
  return sum / scoreArray.length
};

 var students = ["Joseph", "Susan", "William", "Elizabeth"];

 var scores = [ [80, 70, 70, 100],
                [85, 80, 90, 90],                
                [75, 70, 80, 75],
                [100, 90, 95, 85] ];
var gradebook = {
  "Joseph": {"testScores": scores[0], },
  "Susan": {"testScores": scores[1], },
  "William": {"testScores": scores[2], },
  "Elizabeth": {"testScores": scores[3], },


  addScore: function(name, score) {
    gradebook[name]["testScores"].push(score);
  },

  
  getAverage: function(name) {
    return average(gradebook[name]["testScores"]);
  }
}






// __________________________________________
// Reflect

/*

This was a fantastic challenge for me, because my JS was super weak beforehand. I found a lot of awesome tutorials like how to 
create a "class" in javascript even though it is classless, etc. I also learned some more about testing. For the sake of time I gave up
on trying to dynamically add the names and grades via a Gradebook "not-class" and just did it statically. However, I noticed several errors
that without the tests would have taken me far longer to complete. In the averaging, I wasn't iterating with the length of the array. I wasn't 
calling strings for the names and testScores, but quickly found out that left them as undefinted variables. I have copied and pasted the scores
from the scores array, but the type checking in the tests wouldn't accept that, etc.

*/







// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)