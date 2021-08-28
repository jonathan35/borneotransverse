<?php 
include_once 'head.php';


?>


<html lang="en">
<body class="container-fluid">
    
    <?php include 'header.php'?>

    <div style="padding:38px;"></div>
    <div class="d-none d-md-block" style="padding:38px;"></div>

    <div class="row">
        <div class=" col-md-10 offset-md-1 p-4">
            <div class="row">
                <div class="col-2 p-4 d-none d-md-inline">


                    <?php 

                    if(!empty($_GET['cat'])){//This is category
                        $cat_name = $str_convert->to_query($_GET['cat']);
                        $selected_cat = sql_read('select * from category where category like ? limit 1', 's', '%'.$cat_name.'%');
                    }
/*
                    if(!empty($_GET['scat'])){//This is sub category
                        $scat_name = $str_convert->to_query($_GET['scat']);
                        $selected_scat = sql_read('select * from sub_category where sub_category like ? limit 1', 's', '%'.$scat_name.'%');
                    }*/


                    $categories = sql_read('select * from category where status=1 order by position asc');

                    foreach($categories as $category){
                        $cat_name = $str_convert->to_url($category['category']);
                    ?>    
                        <div class="row">
                            <div class="col-12" style="font-size:20px;">
                                <a href="<?php echo ROOT?>gallery/<?php echo $cat_name?>"><div class="filter_menu <?php if($selected_cat['id'] == $category['id']) echo 'active_filter_menu';?>">
                                <?php echo $category['category']?>
                                </div></a>
                            </div>
                        </div>

                        <?php /*
                        $sub_categories = sql_read('select * from sub_category where status=1 and category = ? order by position asc, sub_category asc, id desc', 's', $category['id']);

                        foreach($sub_categories as $sub_category){
                            $scat_name = $str_convert->to_url($sub_category['sub_category']);
                        ?>
                        <div class="row">
                            <div class="col-12">
                                <a href="<?php echo ROOT.'gallery/'.$cat_name.'/'.$scat_name?>"><div class="filter_menu <?php if($selected_scat['id'] == $sub_category['id']) echo 'active_filter_menu';?> pl-4">
                                    <li><?php echo $sub_category['sub_category']?></li>
                                </div></a>
                            </div>
                        </div>
                        <?php }*/?>


                    <?php }?> 

                </div>

                <div class="col-12 col-md-10">
                    <h1>Photo Gallery</h1>
                    <div class="row">
                        <?php 

                        $params[] = 1;
                        $sta_cond = ' status=? ';
                        $cat_cond = '';
                        $scat_cond = '';

                        if(!empty($selected_cat['id'])){
                            $cat_cond = ' and category=? '; 
                            $params[] = $selected_cat['id'];
                        }
                        if(!empty($selected_scat['id'])){
                            $scat_cond = ' and category=? '; 
                            $params[] = $selected_scat['id'];
                        }

                        $galleries = sql_read("select * from gallery where $sta_cond $cat_cond $scat_cond order by position asc, id desc", str_repeat('s', count($params)), $params);
                        
                        $c=0;
                        $itemCount=1;
                        $maxPerPage=50;
                        
                        foreach($galleries as $gallery){?>
                            <div class="col-12 col-md-4 pb-4 page page<?php echo $itemCount?>" style="<?php if($itemCount>$maxPerPage){?> display:none;<?php }?>">
                                
                                <div class="d-none d-md-block bg-cover bg-pic-<?php echo $c?>" style="cursor:pointer; height:200px; background-color:#CCC;background-image:url('<?php echo ROOT.$gallery['photo']?>'); " data-toggle="modal" data-target="#enlargeModal" onclick="$('.indicator-<?php echo $c?>').click();"></div>

                                <div class="d-md-none bg-cover bg-pic-<?php echo $c?>" style="height:200px; background-color:#CCC;background-image:url('<?php echo ROOT.$gallery['photo']?>'); "></div>

                                <img class="img-fluid" src="<?php echo ROOT.$gallery['photo']?>" onload="cover_contain(this, '<?php echo $c?>')" style="display:none;">
                                <div class="text-center">
                                    <?php echo $gallery['caption'];?>
                                    
                                </div>
                            </div>
<script>


    function cover_contain(t, e){

        var h = $(t).height();
        var w = $(t).width();

        if(h>w){
            $('.bg-pic-'+e).removeClass('bg-cover');
            $('.bg-pic-'+e).addClass('bg-contain');
        }
    }

</script>
                            
                        <?php 
                        $itemCount++;
                        $c++;
                        }?>
                    </div>
                    <div class="row">
                        <div class="col-12 pt-5">
                        <?php include 'paging.php'?>
                        </div>                        
                    </div>
                </div>
                
                
            </div>

        </div>
    </div>

   

    <div class="row">
        <div class="col-12">
            <div class="row"><div class="col-12"><br><br><br><br><br></div></div>
            <? include 'footer.php';?>        
        </div>
    </div>                
            

    <div id="enlargeModal" class="modal fade" role="dialog">
        <div class="modal-dialog" style=" margin:5vh 10vw;">
            <div class="modal-content modal-edit-panel" style="width:80vw;">
                <div class="modal-body">

                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="login-panel form-rounded">             
                        <?php include 'gallery_banner.php';?>                      
                    </div>
                </div>
            </div>
        </div>
    </div>



</body>

</html>

