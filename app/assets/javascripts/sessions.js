document.addEventListener('DOMContentLoaded', function() {

  var signInSubmit = document.querySelector('#signInSubmit');
  var signInForm = document.querySelector('#signInForm');
  var url = window.location.href;
  signInSubmit.addEventListener('click', function(event){
    event.preventDefault();

    $.ajax({
      url: signInForm.action,
      method: signInForm.method,
      data: $(signInForm).serialize()
    }).done(function(data, textStatus, xhr){
      if(data["failed"] !== undefined){
        document.querySelector('#signin .alert').innerHTML = data["failed"]
      }
      else{
        window.location.href = url;
      }

    })
  })

})
