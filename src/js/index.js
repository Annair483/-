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
            })
        };
    }
    hot_bang_btn();
    //热销榜单左右拖动
    //鼠标按下获取获取当前鼠标位置、放开鼠标时获取元素，前者-后者，少于父元素宽50%，动画 left为当前left，大于50%left+i*5*li宽
    // function hot_gd_move(){
    //     $hot_goods.on('click',function(e){
    //         var ox = e.clientX;

    //     })
    // }
    
})