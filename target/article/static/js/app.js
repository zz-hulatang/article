function test() {
    alert("test");
}

function ajaxRequest(url,method,data,callback) {
    $.ajax({
        url:url,
        type:method,
        dataType:"json",
        data:data,
        beforeSend:function (xhr){
            xhr.setRequestHeader("token",localStorage.getItem("token"));
        },
        success:callback
    });
}

function getRequest(url,callback) {
    $.ajax({
        url:url,
        type:"GET",
        beforeSend:function (xhr){
            xhr.setRequestHeader("token",localStorage.getItem("token"));
        },
        success:callback
    });
}
