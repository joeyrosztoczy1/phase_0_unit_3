$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'})

 
//RELEASE 1:
  //Add code here to select elements of the DOM 
$('div.mascot > h1').html("<h1> June Bugs Cohort </h1>");
 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
 $('h1').css({
	'color': 'green',
	'border': '1px solid',
	'visiblity': 'default'
})
 
//RELEASE 3: Event Listener
  // Add the code for the event listener here 
 $('img').hover(function() {
 	event.preventDefault();
	$(this).attr('src', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ58TDacc8JkYHGYKrsb3ztewvOTuU1mBKFXu0bYOtSlio8-J2WhQ')
	}, function() { event.preventDefault(); 
				    $(this).attr('src', 'http://grist.files.wordpress.com/2012/09/otter-13.jpg') }
)
 
//RELEASE 4 : Experiment on your own
 
 $('h1').hover(function() { event.preventDefault();
 							$(this).animate( {"border": "0px"}, "slow" ) })
 
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.

var titleElement = $('title');
var bodyElement = $('body');
var headerElement = $(":header");
var divElement = $('div');
var secondHeader = $("div.mascot > h1")
