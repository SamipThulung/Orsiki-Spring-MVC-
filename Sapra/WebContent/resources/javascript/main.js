/* START WITH SLIDER */
/* SLIDER AUTO AND CLICK HANDLER*/
var html = $('html');
var sliderat = 1;
var totalslides = $('.slider .images img').length; //change for more slides
var slideshowtop = setInterval(slider,5000); //Auto Start Slider

function slider(){
	$('#s'+sliderat).toggleClass('shown');
	$('#s'+sliderat).toggleClass('notshown');
	
	$('#s'+sliderat+'~ span').toggleClass('shown');
	$('#s'+sliderat+'~ span').toggleClass('notshown');
	//FIRST SHOWN ELEMENT IS HIDDEN - TOGGLED
	
	if(sliderat >= totalslides){
		sliderat = 1;
	}else{
		sliderat++;
	}
	
	$('#s'+sliderat).toggleClass('shown');
	$('#s'+sliderat).toggleClass('notshown');
	$('#s'+sliderat+'~ span').toggleClass('shown');
	$('#s'+sliderat+'~ span').toggleClass('notshown');
	//THEN NEXT HIDDEN ELEMENT IS SHOWN BY CHANGING THE SLIDERAT var - TOGGLED
	//alert(sliderat);
}

var noautoenabled = false; //CHECK IF ALREADY ENABLED
function noautoslide(){
	if(noautoenabled === false){
		clearInterval(slideshowtop);
		var x = setTimeout(function(){
			slideshowtop = setInterval(slider,5000);
			clearTimeout(x);
			noautoenabled = false;
		},5000);
		noautoenabled = true;
	}
}

function lt(){
	//LEFT SLIDE - NEED TO CHANGE THE sliderat and shown and hide properly//
	//WE just back out by 2 step to shown the next item. SO that go back 2 step and get front one step by slider function.//
	
	$('#s'+sliderat).toggleClass('shown');
	$('#s'+sliderat).toggleClass('notshown');
	
	$('#s'+sliderat+'~ span').toggleClass('shown');
	$('#s'+sliderat+'~ span').toggleClass('notshown');
	
	// CHECKING ALL sliderat VARIABLES MANUALLY //
	if(sliderat == 1){
		sliderat = totalslides-1;
	}else if(sliderat == totalslides){
		sliderat = totalslides-2;
	}else if(sliderat == 2){
		sliderat = totalslides;
	}else{
		sliderat = sliderat - 2;
	}
	
	$('#s'+sliderat).toggleClass('shown');
	$('#s'+sliderat).toggleClass('notshown');
	
	$('#s'+sliderat+'~ span').toggleClass('shown');
	$('#s'+sliderat+'~ span').toggleClass('notshown');
	
	slider();
}

function rt(){
	//RIGHT SLIDE - SIMPLE AS USUAL CALL SLIDER//
	slider();
}

/* SLIDER JS OVER*/
/* NEED TO CHANGE TOTAL IMAGES IN SLIDE totalslides, OR I COULD COUNT - DONE COUNTED HA HA*/

/*Search Click Hide and Show Function*/
function showsearch(){
	$('.search-container').toggleClass('searchShown');
}

function searchforce(){
	$('#search').focus();
}

/* THIS IS FOR CAROUSAL ITEMS PRODUCTS SCROLLING*/
//On CLick
$('.scroll-lt').click(function(){
	var toScrolllt = $(this).siblings('.product-list'); //Get Sibling i.e. the product-list
	var leftPos = $(toScrolllt).scrollLeft(); //Scroll Left
	$(toScrolllt).animate({scrollLeft: leftPos - 350}, 300); //Animate with -350
});

$('.scroll-rt').click(function(){
	var toScrollrt = $(this).siblings('.product-list'); //For Right Scroll
	var leftPos = $(toScrollrt).scrollLeft(); 
	$(toScrollrt).animate({scrollLeft: leftPos + 350}, 300); //We Add +350
});


//Show Login Pop Up Model
function showLogin(){
	$('.login').toggleClass('loginshown');
	$('body').toggleClass('overflown-off'); //AND SCROLL OFF - Note: overflown-off css in :root
}
/* Created By- NIUSH SITAULA 2018 - Oriski*/