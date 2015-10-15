// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'});
//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement=$('body')

//RELEASE 4:
  // Add code here to modify the css and html of DOM elements
 $('body > h1').css({'color': 'green'});
 $('body > h1').css({'border': '1px solid red'});
 $('body > h1').css({'visibility': 'hidden'});
 $('.mascot > h1').html("bobolinks")

//RELEASE 6: Event Listener
  // Add the code for the event listener here

 $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'Bobolink.png')
  })

  $('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })
//RELEASE 5: Experiment on your own

 $('img').on('click', function(){
  	$(this).animate({height:'100px'});
  	$(this).slideDown('slow')
  	$(this).fadeTo('slow', 0.25)
  	$(this).slideToggle('fast');
  	$(this).slideToggle('slow');
  	$(this).slideToggle(10000);
    });


})  // end of the document.ready function: do not remove or write DOM manipulation below this.

//Reflection
// What is jQuery?
// jQuery is a JavaScript library that makes it easier 
// to work use Javascript on the website.

// What does jQuery do for you?
// jQuery wraps common tasks that require many 
// lines of JavaScript code to accomplish
// and wraps them into methods that can be used to 
// manipulate HTML/CSS, DOM, effects/animations, etc.

// What did you learn about the DOM while working on this challenge?
// I learned how the document is organized in the browser and 
// how to access the nodes in the DOM.