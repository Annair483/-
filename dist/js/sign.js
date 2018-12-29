 jQuery(function($){
    var verifyCode = new GVerify("v_container");
    var $yzText =  $('.yzText');
    var $submit = $('.submit');
    var $text = $('#text');
    var $upw = $('#upw');
    var $append_parent = $('.append_parent');
    var $closeBtn = $('.closeBtn');
    var $check = $('.sevenDay').find(':checkbox');
    //点击判断验证码错误-》 提示错误
    $submit.on('click',function(){
        var _text = $text.val();
        var _upw = $upw.val();
        var res = verifyCode.validate($yzText.val());
        if(res){
            $.get("../api/sgin.php",{'uname':_text,'upw':_upw},function(back){
                if(back=='1'){
                    if($check[0].checked){
                        var dates = new Date();
                        dates.setDate(dates.getDate()+7);
                        Cookie.setCookie('user',_text,
                        dates,'/');
                    location.href = '../index.html';
                    }else{
                        Cookie.setCookie('user',_text,
                        '','/');
                        location.href = '../index.html';
                    }
                    
                }
                else{
                    $append_parent.show();
                    setTimeout(function(){
                        $append_parent.hide();
                    },2000);
                }
            })
        }else{
            $yzText.val('');
            $yzText.attr('placeholder','验证码有误')
            return false;
        }
        return false;
    })
    function date(day){
       
        return dates;
    }
    //点击title可关闭
    $closeBtn.on('click',function(){
        $append_parent.hide();
    })
 })