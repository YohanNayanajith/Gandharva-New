function updatePassword(event) {
    event.preventDefault();

//    var astrologer = "<%= ((HttpSession) request.getSession()).getAttribute("astrologer") %>";
    var astrologerPassword = $("#astrologerPassword").val();

    console.log(astrologerPassword);

    let currentPassword = $('#current-password').val().trim();
    let newPassword = $('#new-password').val().trim();
    let confirmPassword = $('#confirm-password').val().trim();

    // Clear any previous error messages
    $('.error-message').remove();

    if (newPassword !== confirmPassword) {
        // Display error message
        $('#confirm-password').after('<div class="error-message">Passwords do not match</div>');

        // Highlight the error fields
        $('#new-password, #confirm-password').addClass('error');
    } else {
        // Remove error message and highlight
        $('#confirm-password + .error-message').remove();
        $('#new-password, #confirm-password').removeClass('error');

        // Proceed with form submission or other actions
        console.log("Passwords match. Proceed with form submission.");
    }
}

function deactivateAccount(event) {
        event.preventDefault();

        Swal.fire({
          title: "Do you want to deactivate your account?",
          showDenyButton: true,
          showCancelButton: true,
          confirmButtonText: "Yes!",
          denyButtonText: `Cancel`
        }).then((result) => {
          if (result.isConfirmed) {
                $.ajax({
                    method: 'POST',
                    url: 'user/update/status',
                    data: {
                        isActivated: false
                    },
                    success: function(result) {
                        if (result == "1") {
                            Swal.fire("Your account is successfully deactivated!", "", "success");
                                        $.ajax({
                                            method: "GET",
                                            url: "logout",
                                            // dataType: "json",
                                            // contentType: "application/json",
                                            success: function(result) {
                                                window.location.href = "HomePage.jsp";
                                            },
                                            error: function(error) {
                                                console.log(error);
                                            }
                                        });
                        } else {
                            Swal.fire({
                                title: "User Deactivated Unsuccessful!",
                                text: 'Please contact the administrator',
                                icon: "error",
                                confirmButtonColor: "#008CBA"
                            });
                        }
                    },
                    error: function(error) {
                        Swal.fire("Can't deactivate the account!", "Please contact the administrator", "error");
                    }
                });
          } else if (result.isDenied) {
            Swal.fire("Account deactivation cancel!", "", "info");
          }
        });
}