jQuery(function($){
    var $ncc_gds_list = $('.ncc_gds_list');

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
    //获取cookie
    var cookie = Cookie.getCookie('shopping');
    if(cookie==""){

    }else{
        cookie = JSON.parse(cookie);
        console.log(cookie)
        goodsCart(cookie)
        jiaJian(cookie)
        delBtn(cookie)
        totalPic(cookie)
    }
    //点击+-  qty变化
    function  jiaJian(){
        // var $jian = $('.jian');
        // var $jia = $('.jia');
        //减qty
        $ncc_gds_list.on('click','.jian',function()
        {   var _jianVal = $(this).next().val()
             _jianVal>0?$(this).next().val(_jianVal-1):$(this).next().val(0);
            // 1.把--后的值存到cookie对应的qty上
            //     1.1获取--后的值
            //     1.2获取对应的cookie值里的qty=1.1的值
            //     1.3重新存cookie
            //2.存完cookie重新渲染
           var idxs;
           var $data_id = $(this).closest('li').attr('data-id');
           cookie.some(function(item,idx){
                idxs=idx
                return item.id==$data_id
           })
           cookie[idxs].qty=$(this).next().val();
           Cookie.setCookie('shopping',JSON.stringify(cookie),"","/")
            goodsCart(cookie)
        })
        // 加qty
        $ncc_gds_list.on('click','.jia',function()
        {   var _jiaVal = $(this).prev().val()
           $(this).prev().val(Number(_jiaVal)+1);
           var idxs;
           var $data_id = $(this).closest('li').attr('data-id');
           cookie.some(function(item,idx){
                idxs=idx
                return item.id==$data_id
           })
           cookie[idxs].qty=$(this).prev().val();
           Cookie.setCookie('shopping',JSON.stringify(cookie),"","/")
            goodsCart(cookie)
        })
    }
    //删除商品
    function delBtn(){
        //获取删除按钮
        //点击事件
        //获取商品对应的cookie的索引
        // 删除对应商品里cookie对象
        // 重新存cookie
        // 重新渲染
        $ncc_gds_list.on('click','.delBtn',function(){
            var idxs;
            var $data_id = $(this).closest('li').attr('data-id');
            cookie.some(function(item,idx){
                idxs=idx
                return item.id==$data_id
            })
            cookie.splice(idxs,1)
            Cookie.setCookie('shopping',JSON.stringify(cookie),"","/")
            goodsCart(cookie)
        })
    }
    // 勾选要结算商品时显示总价格
    function totalPic(){
        // 1勾选商品
        // 2获取各个商品的pic
        //      遍历被选中的商品
                // 每个商品寻找对应的pic推到arr里
        //              some（）.遍历被选中的cookie的索引
        // 3。totalPic=各个商品的pic相加
        // 遍历arr，然后arr里的每个元素相加，返回出的值为total值
        
        $ncc_gds_list.on('click','.check input',function(){
            var $godsCheck = $ncc_gds_list.find(':checked');
            var picArr = [];
            $godsCheck.each(function(idx,item){
               var godsPic = $(item).closest('li').find('.goods-subtotal').html();
                picArr.push(godsPic)
                console.log(godsPic)
            console.log(picArr)


            })
            // var totalPic;
            // for(var i=0;i<picArr.length;i++){
            //     totalPic += picArr[i];
            // }
        })
        
    }
    //渲染商品
    function goodsCart(){
            $ncc_gds_list.find('ul').html(cookie.map(function(item,idx){
                return `<li data-id="${item.id}">
                <div class="check">
                    <input type="checkbox">
                </div>
                <div class="list_100">
                    <a href="#"><img src="${item.images}" alt=""></a>
                </div>
                <div class="ncc_gds_info">
                    <a href="#" >${item.goodsinfo}</a>
                </div>
                <div class="goods-price">
                        ${item.reducpic}.00
                </div>
                <div class="ws0">
                    <span class="jian">-</span><input type="text" value="${item.qty}"><span class="jia">+</span>
                </div>
                <div class="goods-subtotal">${item.reducpic*item.qty}.00</div>
                <div class="ncc-border-right">
                    <p>移入收藏夹</p>
                    <p class="delBtn">删除</p>
                </div>
            </li>`
            }).join(''))
    }
})