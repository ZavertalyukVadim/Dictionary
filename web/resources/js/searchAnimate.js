function anichange(objName) {
    if ($(objName).css('display') == 'none') {
        $(objName).animate({height: 'show'}, 400);
    } else {
        $(objName).animate({height: 'hide'}, 200);
        $(objName).animate({height: 'show'}, 400);
    }
}

function search(objName) {
    if ($('#query').val().length > 1) {
        
        $.ajax({
            type: 'GET',
            url: "/search",
            data: {
                line: $('#query').val()
            },
            success: function (data) {
                var response = $(data);
                $('#resultSearch').html(response.find("#r").html());
                //alert(data);
            }
        });
        if ($(objName).css('display') == 'none') {
            $(objName).animate({height: 'show'}, 400);
        } else {
            $(objName).animate({height: 'hide'}, 200);
            $(objName).animate({height: 'show'}, 400);
        }
    }
}
