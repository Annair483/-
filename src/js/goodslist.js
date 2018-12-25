jQuery(function($){
    function copyNav2(){
        for(var i=0;i<9;i++){
            var $nav2 = $(".nav2");
            var $nav2_li = $nav2.find('li:lt(1)');
            $nav2_li.clone().appendTo(".nav2");
            $('.nav3')[i+1].style.top = -34*(i+1) + 'px';
        };
    };
    copyNav2();
})

