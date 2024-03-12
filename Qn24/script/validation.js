$(document).ready(function() {
    $('#check').click(function() {
        var email = $('#email').val();
        $.ajax({
            url: 'components/qn24.cfc?method=checkMail',
            type: 'post',
            data: {email: email, name: $('#name').val()},
            success: function(response) {
                if (response.message == "exists") {
                    $('#error').text('Email id is already there');
                    $('#submitButton').prop('disabled', true);
                } else {
                    $('#error').text('');
                    $('#submitButton').prop('disabled', false);
                }
            },
            error: function(xhr, status, error) {
                alert("An error occurred: " + error);
            }
        });
    });
});
