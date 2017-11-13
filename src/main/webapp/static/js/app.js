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
            layer.load();
        },
        success:callback,
        error:function () {
            layer.msg('网络错误', {
                offset: 't',
                anim: 6
            });
        },
        complete:function (xhr,ts) {
            layer.closeAll('loading');
        }
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

/**
 * 输入框验证
 * @param value 值
 * @param id id
 * @returns {boolean}
 */
function validInput(value,id) {
    if(value == null || value.trim(value) == "" ){
        layer.tips("不能为空","#"+id);
        return false;
    }
    return true;
}

/**
 * 顶部消息弹出框
 * @param msg 消息
 */
function msg(msg) {
    layer.msg(msg, {
        offset: 't',
        anim: 6
    });
}