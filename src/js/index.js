jQuery(function($){
    var $hot_goods = $('.hot_goods')
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
    //热销商品li生成
    function hot_bang(){
        
        var $hot_goods_li = $hot_goods.find('li');
        for(var i=0;i<8;i++){
            $hot_goods_li.first().clone().appendTo($hot_goods);
        };
        //根据li个数生成ul长度
        $hot_goods.outerWidth($hot_goods_li.first().outerWidth(true)*$hot_goods.find('li').length+'px')
    };
    hot_bang();
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
                // console.log(i)
                // console.log(i*5*$hot_goods.find('li').first().outerWidth(true)+'px')
            })
            
        };
        // $hot_goods_btn.on('click',function(){

            // console.log($('.hot_goods_btn span').length)
        // })
    }
    hot_bang_btn();
})