jQuery(function($){
    var $bigImgSrc = $('.bigImg img');
    var $goodsName = $('.name h1');
    var $reducpic = $('.cost-price strong');
    var $sell = $('.rate i');
    var $pic = $('.price strong');
    var $ncsFigure = $('.ncs-figure-input');
    var $goodsQty = $('.input-text');
    var $imageMenu = $('.imageMenu');
    var $smallImg1 = $('.imageMenu li').eq(0).find('img');
    console.log($smallImg1)
    var id = location.search.slice(4);
    // console.log(params)
    //请求数据库返回数据
    function ajaxs(){
        $.get('../api/goodsDetails.php',{'id':id},function(res){
            console.log(res)
            bigImgSrc(res);
        },'json')
    }
    //详情页数据生成
    function bigImgSrc(res){
        // img路径
        $bigImgSrc.attr({
            'src':res[0].images,
            'data-big':res[0].images
        })
        //商品名
        $goodsName.html(res[0].goodsname);
        //原价
        $reducpic.html(`￥${res[0].reducpic}`);
        //现价
        $pic.html(`￥${res[0].pic}`);
        //销量
        $sell.html(res[0].sell);
        //第一张小图=大图
        $smallImg1.attr({
            'src':res[0].images,
            'data-big':res[0].images
        });
        changeImg();
        fly(res)
    };
    //数量加减
    function goodsQty(){
        var _goodsQty = $goodsQty.val();
        $ncsFigure.on('click',function(e){
            if(e.target.className == "increase"){
                $goodsQty.val(++_goodsQty)
            }else if(e.target.className == "decrease"&&_goodsQty>0){
                $goodsQty.val(--_goodsQty)
            }
        })
    }
    //tab切换smallImg到bigIMg
    function changeImg(){
        $imageMenu.on('mouseover','img',function(e){
            $bigImgSrc.attr({
                'src':this.src,
                'data-big':this.dataset.big
            })
        })
    }
   //放大镜插件
   function zoom(){
        $('.bigImg').lxzoom({width:627,height:467}).addClass('box');
   }
    //2级导航、3级导航创建和定位
    function copyNav2(){
        for(var i=0;i<9;i++){
            var $nav2 = $(".nav2");
            var $nav2_li = $nav2.find('li:lt(1)');
            $nav2_li.clone().appendTo(".nav2");
            $('.nav3')[i+1].style.top = -34*(i+1) + 'px';
        };
    };
    //飞入购物车
    function fly(res){
        var $addcart = $('.addcart');
        $addcart.on('click',function(e){
            var $flyDiv = $(`<img src="
            ${res[0].images}" width="40" height="40">`);
            $flyDiv.css({
                'position':'absolute',
                'left':$addcart.offset().left,
                'top':$addcart.offset().top,
            })
            $flyDiv.appendTo($addcart);
            var $my_cart = $('.my-cart');
            $flyDiv.animate({'left':$my_cart.offset().left+30,'top':$my_cart.offset().top+10},500,function(){
                $flyDiv.remove()
            })
            console.log($my_cart.offset().left,$my_cart.offset().top);
            return false;
        })
    }
    //判断是否登录账号
    function ifSign(){
        var cookie = Cookie.getCookie('user')||'';
        // console.log(cookie)
        
        if(cookie==''){
            notSign()
        }else{
            // cookie = JSON.parse(cookie);
            isSign(cookie)
        };
        $('.tuiChu').on('click',function(){
            notSign();
            Cookie.delCookie('user','/');
        })
    }
    //未登录渲染
    function notSign(){
        return $('.head-t-l').html(`<span>您好，欢迎来到
        <a href="#" target="_blank">百洋健康</a>
    </span>
    <span><a href="../html/sign.html" target="_blank">[登录]</a></span>
    <span><a href="../html/registers.html" target="_blank">[注册]</a></span>`)
    }
    //登录渲染
    function isSign(cookie){
        return  $('.head-t-l').html(`<span>您好 
        <a href="#" target="_blank">${cookie}</a>
    </span>
    <span>，欢迎来到<a href="../index.html" target="_blank">百洋健康</a></span>
    <span><a href="#"  class="tuiChu">[退出]</a></span>`)
    }
    ifSign();
    copyNav2();
    goodsQty();
    zoom();
    ajaxs();
})