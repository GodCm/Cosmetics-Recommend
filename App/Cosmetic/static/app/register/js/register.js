$(function () {
    $("#con_pwd").change(function () {
        var pwd = $("#pwd").val()
        var con_pwd = $(this).val()
        if(pwd == con_pwd){
            $("#con_pwd_warn").html("密码一致").css('color','green')

        }else{
            $("#con_pwd_warn").html("两次密码不一致,请重新输入").css('color','red')
        }
    })
})
