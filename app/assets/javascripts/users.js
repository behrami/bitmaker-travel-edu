document.addEventListener('DOMContentLoaded', function() {

  var signUpSubmit = document.querySelector('#signUpSubmit');
  var signUpForm = document.querySelector('#signUpForm');
  var url = window.location.href;

  signUpSubmit.addEventListener('click', function(event){
    event.preventDefault();

    $.ajax({
      url: signUpForm.action,
      method: signUpForm.method,
      data: $(signUpForm).serialize()
    }).done(function(data, textStatus, xhr){
      if(data["failed"] !== undefined){
        document.querySelector('#signup .alert').innerHTML = data["failed"]
      }
      else{
        window.location.href = url;
      }

    })
  })

})
