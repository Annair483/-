if(!jQuery.fn.lmCarousel){
    jQuery.fn.lmCarousel = function(obj){
        var defaults = {
            imgs : [],
            width : 200,
            height : 200,
            idx : 0,
            type : "horizontal",//垂直vertical    水平：horizontal   淡入淡出 fade
            seamless : true //无缝滚动
        }
        var opt = Object.assign({},defaults,obj);
        console.log(opt);
        var $ul;
        var $page;
        var init = () =>{
            $ul = $("<ul/>");
            for(var i=0;i<opt.imgs.length;i++){
                $("<li/>").appendTo($ul).html(`<img src="${opt.imgs[i]}"  width="${opt.width}"  height="${opt.height}"/>`)
            }
            this.append($ul).addClass("focus").width(opt.width).height(opt.height);
            // this:$("#box")
            if(opt.seamless == true && (opt.type == "horizontal" || opt.type=="vertical")){
                $("<li/>").appendTo($ul).html(`<img src="${opt.imgs[0]}"  width="${opt.width}"  height="${opt.height}"/>`)
            }
            if(opt.type == "horizontal"){
                $ul.addClass("horizontal").width(opt.width*opt.imgs.length);
                if(opt.seamless == true){
                    $ul.width(opt.width*(opt.imgs.length+1));
                }
            }else if(opt.type == "fade"){
                $ul.addClass("fade").width(opt.width).height(opt.height);
                $ul.children().eq(opt.idx).css("opacity",1).siblings().css("opacity",0);
            }
        }
        var autoplay = ()=>{
            setInterval(()=>{
                opt.idx++;
                showPic();
            },2000)
        }
        var showPic = ()=>{
            if(opt.seamless == true && (opt.type == "horizontal" || opt.type=="vertical")){
                if(opt.idx == opt.imgs.length+1){
                    opt.type == "horizontal"?$ul.css("left",0):$ul.css("top",0);
                    opt.idx = 1;
                }
            }else{
                if(opt.idx >= opt.imgs.length){
                    opt.idx = 0;
                }
            }
            if(opt.type=="vertical"){
                $ul.animate({top:-opt.idx*opt.height},500);
            }else if(opt.type=="horizontal"){
                $ul.animate({left:-opt.idx*opt.width},500);
            }else if(opt.type=="fade"){
                $ul.children().animate({opacity:0},500).eq(opt.idx).animate({opacity:1},500);
            }
        }
        var createPage = ()=>{
            $page  = $("<div/>"); 
            $page.addClass("page");
            for(var i=1;i<=opt.imgs.length;i++){
                var $dotted = $("<span/>");
                $dotted.html(i);
                $page.append($dotted);
            }    
            $page.children(this.idx).addClass("active");
            this.append($page);
        }

        init();
        autoplay();
        createPage();

        $page.on("click",function(e){
            console.log(e.target.tagName);
            if(e.target.tagName == "SPAN"){
                opt.idx = e.target.innerHTML - 1;
                showPic();
            }
        })
        // $zuojian.on("click",function(e){
        //     opt.idx--;
        //     showPic();
        // })


    }
}