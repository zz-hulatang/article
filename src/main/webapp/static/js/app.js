/**
 * ajax请求
 * @param url 请求路径
 * @param method 请求方法
 * @param data 参数
 * @param callback 回调方法
 */
function ajaxRequest(url,method,data,callback) {
    $.ajax({
        url:url,
        type:method,
        dataType:"json",
        data:JSON.stringify(data),
        beforeSend:function (xhr){
            xhr.setRequestHeader("token",localStorage.getItem("token"));
            xhr.setRequestHeader("Content-Type","application/json;charset=UTF-8");
        },
        success:callback
    });
}

/**
 * get请求
 * @param url 请求路径
 * @param callback 回调方法
 */
function getRequest(url,callback) {
    ajaxRequest(url,"GET",undefined,callback);
}

/**
 * post请求
 * @param url 请求路径
 * @param data 参数
 * @param callback 回调方法
 */
function postRequest(url,data,callback){
    ajaxRequest(url,"POST",data,callback);
}