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
      if(xhr.getResponseHeader('Content-Type') === 'text/html; charset=utf-8'){
        document.querySelector('#signInModalContainer .modal-body').append(data)
      }

    })
  })

})
