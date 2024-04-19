function deactivateAccount(e) {
    e.preventDefault();

    console.log(e);

    let currentPassword = $("#current-password").val();
    let newPassword = $("#new-password").val();
    let confirmPassword = $("#confirm-password").val();

    console.log(currentPassword);
    console.log(newPassword);
    console.log(confirmPassword);
}


function sample() {
    console.log('Providing feedback for ID: ' + id);
        Swal.fire({
            title: 'Feedback',
            input: 'textarea',
            showCancelButton: true,
            confirmButtonText: 'Submit',
            cancelButtonText: 'Cancel',
            inputValidator: (value) => {
                if (!value) {
                    return 'Please enter your feedback!';
                }
            }
        }).then((result) => {
            if (result.isConfirmed) {
                let feedback = result.value;

                $.ajax({
                    method: 'POST',
                    url: 'astrologer/update/pending/feedback',
                    data: {
                        feedback: feedback,
                        requestId: id
                    },
                    success: function(result) {
                        if (result == "1") {
                            Swal.fire({
                                title: "Feedback Submitted!",
                                text: '',
                                icon: "success",
                                confirmButtonColor: "#008CBA"
                            });
                        } else {
                            Swal.fire({
                                title: "Feedback is not Submitted!",
                                text: '',
                                icon: "error",
                                confirmButtonColor: "#008CBA"
                            });
                        }
                    },
                    error: function(error) {
                        Swal.fire({
                            title: "Feedback is not Submitted!",
                            text: '',
                            icon: "error",
                            confirmButtonColor: "#008CBA"
                        });
                    }
                });
            }
        });
}