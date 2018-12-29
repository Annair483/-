jQuery(function($){
    var $hot_goods = $('.hot_goods');
    var $recomgds_ul = $('.recomgds_ul');
    //2级导航、3级导航创建和定位
    function copyNav2(){
        for(var i=0;i<9;i++){
            var $nav2 = $(".nav2");
            var $nav2_li = $nav2.find('li:lt(1)');
            $nav2_li.clone().appendTo(".nav2");
            $('.nav3')[i+1].style.top = -34*(i+1) + 'px';
        };
    };
    copyNav2();

    //服务器请求数据
    $.get('../api/indexGoods.php',function(res){
        //热销商品li生成
        hot_bang_li_creat(res);
         //根据li个数生成ul长度
         hot_bang_li_len();
        
         //推荐商品li生成
         recomGds(res);
         recomGds_li_len();
    },'json')

    //热销商品li生成
    function hot_bang_li_creat(res) { 
        $hot_goods[0].innerHTML= res[0].map(function(item,idx){
            return `<li>
            <p class="hot_goods_img ">
                <a href="#" target="_blank">
                    <img src="${res[0][idx].images}" alt="">
                </a>
            </p>
            <p class="hot_goods_pic">
                <span>${res[0][idx].goodsname}</span>
                <span style="color:#ef3c79;font-weight: 400;">￥${res[0][idx].reducpic}</span>
            </p>
            <p class="hot_goods_buy">
                <a href="#" target="_blank">立即购买</a>
            </p>
        </li>`
        }).join('');
    }

    //根据li个数生成ul长度
    function hot_bang_li_len(){
        var $hot_goods_li = $hot_goods.find('li');
         $hot_goods.outerWidth($hot_goods_li.first().outerWidth(true)*$hot_goods_li.length+'px');
    }
    function recomGds_li_len(){ 
        var $recomgds_ul_li = $recomgds_ul.find('li');
         $recomgds_ul.outerWidth($recomgds_ul_li.first().outerWidth(true)*$recomgds_ul_li.length+'px');
     }
    //热销榜单选中按钮滑动
    function hot_bang_btn(){
        var $hot_goods_btn = $('.hot_goods_btn');
        var $hot_gd_span = $('.hot_goods_btn span');
        for(let i=0;i<$hot_gd_span.length;i++){
            $hot_gd_span.eq(i).on('click',function(){
                $hot_goods.animate({'left':-i*5*$hot_goods.find('li').first().outerWidth(true)+'px'},300);
                for(let i=0;i<$hot_gd_span.length;i++){
                    $hot_gd_span.eq(i).css('backgroundColor',"#ccc");
                }
                $hot_gd_span.eq(i).css('backgroundColor',"#EF3C79");
            })
        };
    }
    hot_bang_btn();
    //商品推荐li生成
    function recomGds(res){ 
        $recomgds_ul[0].innerHTML=res[1].map(function(item,idx){
            return `<li>
            <a href="#" target="_blank">
                <div class="reGoods-img">
                    <img src="${res[1][idx].images}" alt="">
                </div>
                <div class="reGoods-des">
                    <p class="reG-des-p1">
                    ${res[1][idx].goodsname}
                    </p>
                    <p class="reG-des-p2">
                       <span>￥ ${res[1][idx].reducpic}</span><i>￥${res[1][idx].pic}</i>
                    </p>
                </div>
            </a>
        </li>`
        }).join('');

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
    <span><a href="html/sign.html" target="_blank">[登录]</a></span>
    <span><a href="html/registers.html" target="_blank">[注册]</a></span>`)
    }
    //登录渲染
    function isSign(cookie){
        return  $('.head-t-l').html(`<span>您好 
        <a href="#" target="_blank">${cookie}</a>
    </span>
    <span>，欢迎来到<a href="index.html" target="_blank">百洋健康</a></span>
    <span><a href="#"  class="tuiChu">[退出]</a></span>`)
    }
    ifSign();
})