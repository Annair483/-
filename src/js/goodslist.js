jQuery(function($){
    var qty = 20;
    var currentPage = 1;
    var $suqares_ul = $('.suqares_ul');
    var $pagination = $('.pagination');
    var $pageList = $('.pagination ul');
    var $firstBtn = $('.pagination div span:contains(首页)');
    var $preBtn = $pagination.find('span:contains(上一页)');
    var $nextBtn = $pagination.find('span:contains(下一页)');
    var $lastBtn = $pagination.find('span:contains(末页)');
    ajaxs();
    page();

    //列表页商品生成
    function squaresList(res){
        $suqares_ul[0].innerHTML = res.data.map(function(item,idx){
            return `<li data-id="${res.data[idx].id}">
            <div class="squares_gds_list">
                <div class="gds-img">
                        <img src="${res.data[idx].images}" alt="">
                </div>
                <div class="gds-cont">
                    <ul class="gds_pic_show">
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                    <div class="gds-name">${res.data[idx].goodsname}</div>
                    <div class="gds-price">¥${res.data[idx].reducpic}
                        <span>¥${res.data[idx].pic}</span>
                        <span><img src="../images/zpin.gif" alt=""><img src="../images/souhou.gif" alt=""></span>
                        
                    </div>
                    <div class="gds-sub">
                        <span><i></i>加入对比</span>
                    </div>
                    <div class="sell-stat">
                        <ul>
                            <li style="border:0;" >
                                <span style="color:#3388BB;">${res.data[idx].hot}</span>
                                <p>商品销量</p>
                            </li>
                            <li>
                                <span>0</span>
                                <p>用户评论</p>
                            </li>
                            <li>&nbsp;</li>
                        </ul>
                    </div>
                    <div class="store">
                        <a href="#" target="_blank">
                            百洋健康官方自营店
                        </a>
                    </div>
                    <div class="add_carts">
                        <i class="glyphicon glyphicon-shopping-cart"></i>加入购物车</div>
                </div>
            </div>
        </li>`
        }).join('');
    }
    //点击商品传参id到详情页
    function locations(res){
        $suqares_ul.on('click','li',function(){
            var $id= $(this).attr('data-id');
                location.href=`goodsDetails.html?id=${$id}`;
            })
    }
     //服务器请求数据
     function ajaxs(){ 
        $.get('../api/goodsList.php',{'qty':qty,'currentPage':currentPage},function(res){
            var totalPage = Math.ceil(res.len/res.qty);
            squaresList(res);
            sort(res);
            locations(res);
            
            //分页生成
            $pageList[0].innerHTML = "";
            for(var i=1;i<=totalPage;i++){
                var Li = document.createElement("li");
                Li.innerHTML = i;
                if(i == res.currentPage){
                    Li.classList.add("page");
                }
                $pageList[0].appendChild(Li);
            }

            //判断第一页时首页样式转变
            if(currentPage==1){
                $firstBtn.addClass('pagination_color');
                $preBtn.addClass('pagination_color');
            }else if(currentPage>1){
                $firstBtn.removeClass('pagination_color');
                $preBtn.removeClass('pagination_color');
            }
            if(currentPage==totalPage){
                $lastBtn.addClass('pagination_color');
                $nextBtn.addClass('pagination_color');
            }else if(currentPage<totalPage){
                $lastBtn.removeClass('pagination_color');
                $nextBtn.removeClass('pagination_color');
            }
        },'json')
      }
    //点击分页，获取当前页码，再次发起请求
    function page(){
        $pagination.on('click',function(e){
            var $pageListLen = $pageList.find('li').length;
            if(e.target.tagName == 'LI'){
                currentPage = e.target.innerHTML;
                ajaxs();
            }else if(e.target.innerHTML== $firstBtn.html()){
                currentPage =1;
                ajaxs();
            }else if(e.target.innerHTML== $preBtn.html()&&currentPage>1){
                currentPage--;
                ajaxs();
            }else if(e.target.innerHTML== $nextBtn.html()&&currentPage<$pageListLen){
                currentPage++;
                ajaxs();
            }else if(e.target.innerHTML== $lastBtn.html()){
                currentPage =$pageListLen;
                ajaxs();
            }
        })
    }
    //排序
    // sort();
    function sort(res){
        var showHot = true;
        var showSell = true;
        var shwoPic = true;
        var $default = $('.nch-sor-paixu li').eq(0);
        var $goodsSell = $('.nch-sor-paixu li').eq(1);
        var $goodsHot = $('.nch-sor-paixu li').eq(2);
        var $goodsPic = $('.nch-sor-paixu li').eq(3);
        $default.on('click',function(){
            ajaxs();
            page();
        });
        //销量排序
        $goodsSell.on('click',function(){
            $goodsSell.find('i').toggleClass('paixu_ratate');
            if(showSell){
                res.data  = res.data.sort(function(a,b){
                    return b.sell-a.sell;
                })
                squaresList(res);
            }else{
                res.data  = res.data.sort(function(a,b){
                    return a.sell-b.sell;
                })
                squaresList(res);
            }
            showSell=!showSell;
        })
        //人气排序
        $goodsHot.on('click',function(){
            $goodsHot.find('i').toggleClass('paixu_ratate');
            if(showHot){
                res.data  = res.data.sort(function(a,b){
                    return b.hot-a.hot;
                })
                squaresList(res);
            }else{
                res.data  = res.data.sort(function(a,b){
                    return a.hot-b.hot;
                })
                squaresList(res);
            }
            showHot=!showHot;
        })
        //价格排序
        $goodsPic.on('click',function(){
            $goodsPic.find('i').toggleClass('paixu_ratate');
            if(shwoPic){
                res.data  = res.data.sort(function(a,b){
                    return b.reducpic-a.reducpic;
                })
                squaresList(res);
            }else{
                res.data  = res.data.sort(function(a,b){
                    return a.reducpic-b.reducpic;
                })
                squaresList(res);
            }
            shwoPic=!shwoPic;
        })
    }
    
})

