document.addEventListener('DOMContentLoaded', function() {

  var signInButton = document.querySelector('#SignIn');
  var signInTest = document.querySelector('.signInTest');

  signInButton.addEventListener('click',function(e){
    e.preventDefault();
    signInTest.style.display = "block";
  })
})
