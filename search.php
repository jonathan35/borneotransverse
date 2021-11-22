

<form action="<?php echo ROOT?>tours" method="post" id="search_from" style="width:100%; padding:0 0 0 0;">
    <div class="ic-search" style="color:#999; width:0; height:0; float:right; position:relative; top:7px; right:31px;">
        <i class="fa fa-search"></i>
    </div>
    <input type="text" class="form-control h-search" name="keyword" placeholder="Search Tour" id="keyword" autocomplete="off" style="width:96%; display:inline-block;">
    
    <input type="hidden" id="user_keyword" name="user_keyword">
    
    <div style="width:0; height:0; position:relative; left:-30px; overflow:visible; display:inline-block; ">
    <img src="<?php echo ROOT?>images/close-16.jpg" id="clearkeyword" onclick="clearkeyword()" onload="fadeOut()"></div>
    
    
</form>

<div id="auto_list">
    <?php 
    $tour_items = sql_read("select name, brief_description, full_description from tour where status =1 order by name asc");

    foreach((array)$tour_items as $tour_item){
        echo '<div class="auto_suggest_item">'.$tour_item['name'].'<span style="display:none">||||'.$tour_item['brief_description'].$tour_item['full_description'].'</span></div>';
    }
    ?>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>

$('#clearkeyword').fadeOut();

$("#keyword").on('keyup dblclick', function(){
    
    //var asdsad = '#clearkeyword';
    //$("#clearkeyword").css("display", "inline-block");

    $('#clearkeyword').fadeIn();

    var keyw = $(this).val();

    if( keyw != ''){
        $('#auto_list').fadeIn();
    }else{
        $('#auto_list').fadeOut();
    }

    $( ".auto_suggest_item" ).each(function( index ) {
        var auto_suggest_item = $(this).text();
        if(auto_suggest_item.toLowerCase().includes(keyw.toLowerCase()) === true){
            $(this).fadeIn();
        }else{
            $(this).fadeOut();
        }
    });
});

$(".auto_suggest_item").on('click', function(){
    var userStr = $("#keyword").val();
    $('#user_keyword').val(userStr);
    
    var str = $(this).text();
    var str = str.split('||||')[0];
    $('#keyword').val(str);
    //$('#keyword').focus(); 
    $('#auto_list').fadeOut();
    document.getElementById('search_from').submit();
});

$(function() {
    $("body").click(function(e) {
        if (e.target.id == "auto_list" || $(e.target).parents("#auto_list").length || e.target.id == "keyword" ) {
            //alert("Inside div");
        } else {
            $('#auto_list').fadeOut();
        }
    });
})

$("#clearkeyword").click(function(e) {
    $('#clearkeyword').fadeOut();
    $('#keyword').val('');
    $('#keyword').focus();
})

</script>

<style>
.auto_suggest_item {
    text-align: left;
    width:260px;
    font-weight: normal;
}
#search_from {
    padding-top:20px;
}
#auto_list {
    /**/display:none;
    position:absolute;
    top:46px;
    z-index:4;
    background: #FFF;
    border:1px solid #CCC;
    box-shadow:2px 2px 2px rgba(0,0,0,.2);
    overflow-y:scroll;
    overflow-x:hidden;
    max-height:80vh;
    transition: background .5s;
}
@media (max-width: 575px) {
    #search_from {
        top:-10px;
    }
    #auto_list {
        top:50px;
        width:91%;
    }
}
#auto_list > div {
    padding:4px 10px;
    cursor:pointer;
}
#auto_list > div:hover {
    background: #EFEFEF;
}
.h-search::placeholder {
    color:#999;
}
</style>
