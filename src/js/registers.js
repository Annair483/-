jQuery(function($){
    $('.submit input').on('click',function(){
        var _uname = $('.uname input')[0].value.trim();
        var _upw = $('.upw input')[0].value.trim();
        var _email = $('.email input')[0].value.trim();
        //用户名
        if(!/^[a-zA-Z0-9][\w\-]{5,9}$/.test(_uname)){
            $('.unameTitle').show();
            $('.uname input').val('');
            return false;
        }else{
            $('.unameTitle').hide();
        }
        //注册密码
        if(!/^\S{6,20}$/.test(_upw)){
            $('.upwTitle').show();
            $('.upw input').val('');
            return false;
        }else{
            $('.upwTitle').hide();
        }
        //注册邮箱
        if(!/^[a-z0-9][\w\-\.]{2,29}@[a-z0-9\-]{2,67}(\.[a-z\u2E80-\u9FFF]{2,6})+$/.test(_email)){
            $('.emailTitle').show();
            $('.email input').val('')
            return false;
        }else{
            $('.emailTitle').hide();
        }
        if(!$('.clause-div input')[0].checked){
            return false;
        }
        //服务器返回数据
        zhuCe(_uname,_upw,_email);
    })
    function zhuCe(_uname,_upw,_email){
        $.get('../api/registers.php',{'uname':_uname,'upw':_upw,'email':_email},function(res){
            if(res==1){
                Cookie.setCookie('user',_uname,
                '','/');
                location.href = '../index.html';
                return false;
            }else{
                $('.unameTitle').html('该用户名已注册，请更换').show();
                return false;
            }
            
        })
    }
})