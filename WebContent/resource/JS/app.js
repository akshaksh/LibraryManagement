         var mainApp = angular.module("mainApp", []);
         
         mainApp.controller('studentController', function($scope) {
            
         });
   function validateForm()
   {
		var pw1=document.forms["studentForm"]["password"].value;
		var pw2=document.forms["studentForm"]["password_confirm"].value;
		var Month=document.forms["studentForm"]["Month"].value;
		var Day=document.forms["studentForm"]["Day"].value;
		var Year=document.forms["studentForm"]["Year"].value;
		var msg="";
		if(pw1 != pw2)
		{
			
			msg=msg+"Please check the below points before submitting the registration form\n 1)Password does not match \n";
		}
		if(Month == "Month" || Day == "Day" || Year == "Year")
		{
			msg=msg+" 2)Date of birth is not correct please check it";
		}
		if(msg != "")
		{
			alert(msg);
			return false;
		}
		return true;
		
   }