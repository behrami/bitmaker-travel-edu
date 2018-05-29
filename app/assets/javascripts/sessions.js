document.addEventListener('DOMContentLoaded', function() {

  var signInButton = document.querySelector('#SignIn');
  var signInDisplay = document.querySelector('.signInNotDisplay');

  signInButton.addEventListener('click',function(e){
    e.preventDefault();
    signInDisplay.classList.remove("signInNotDisplay");
    signInDisplay.classList.add("signInDisplay");
  })

  var signInSubmit = document.querySelector('#signInSubmit');
  var signInForm = document.querySelector('#signInForm');

  signInSubmit.addEventListener('click', function(event){

    event.preventDefault();
    $.ajax({
      url: signInForm.action,
      method: signInForm.method,
      data: $(signInForm).serialize()
    }).done(function(data, textStatus, xhr){
      console.log(xhr.getResponseHeader('Content-Type'));
      if(data["failed"] !== undefined){
        document.querySelector('#signInModalContainer .alert').innerHTML = data["failed"]
      }
      else{
        $('#exampleModal').modal('hide');
        document.querySelector('.header').innerHTML = data["logged_in"]
      }

    })
  })

})
