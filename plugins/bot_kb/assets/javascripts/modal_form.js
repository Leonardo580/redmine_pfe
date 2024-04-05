// app/assets/javascripts/modal_form.js
$(document).ready(function() {
    $('#submit-kb-form').click(function() {
      // Handle form submission here
      // You can use Ajax to send the form data to your server-side code
  
      // Close the modal
      $('#modal-form').modal('hide');
    });
  
    $('#modal-form').on('hidden.bs.modal', function() {
      // Reset the form fields if needed
    });
  });