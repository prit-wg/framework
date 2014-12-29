$("document").ready(function() {
	$("input#search").focus(function(){
		if($(this).val()==" I am looking for.."){
			$(this).val('');
		}
	 });
	 
	  $("input#search").blur(function(){
		if($(this).val()==''){
			$(this).val(" I am looking for..");
		}
	 });
         $("input#search_business").focus(function(){
		if($(this).val()=='Search Business'){
			$(this).val('');
		}
	 });
	 
	  $("input#search_business").blur(function(){
		if($(this).val()==''){
			$(this).val('Search Business');
		}
	 });
});      
