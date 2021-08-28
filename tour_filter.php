<?php 

if(!empty($_GET['ty'])){//This is tour type
    $type_name = $str_convert->to_query($_GET['ty']);
    $selected_type = sql_read('select * from tour_type where tour_type like ? limit 1', 's', '%'.$type_name.'%');
}

if(!empty($_GET['cat'])){//This is category
    $cat_name = $str_convert->to_query($_GET['cat']);
    $selected_category = sql_read('select * from category where category like ? limit 1', 's', '%'.$cat_name.'%');
}


$locations = sql_read('select * from location where status=1');

foreach($locations as $location){
    $loc_url = $str_convert->to_url($location['location']);
?>    
    <!--<div class="row">
        <div class="col-12">
            <a href="<?php echo ROOT?>tours/<?php echo $loc_url?>"><div class="filter_menu <?php if($_GET['c'] == $loc_url) echo 'active_filter_menu';?>">
                    <?php echo $location['location']?>
            </div></a>
        </div>
    </div>
    <?php }?> 

    <hr>


    <div class="row">
        <div class="col-12">
            <a href="<?php echo ROOT?>best_deal"><div class="filter_menu <?php if($_GET['best_deal'] == '1') echo 'active_filter_menu';?>">
                Best Deal
            </div></a>
        </div>
    </div>-->

    <?php 
    $types = sql_read('select * from tour_type where status=1 order by position asc, tour_type asc, id desc');

    foreach($types as $type){
    ?>
    <div class="row">
        <div class="col-12">
            <a href="<?php echo ROOT?>tours/<?php echo $str_convert->to_url($type['tour_type'])?>"><div class="filter_menu <?php if($selected_type['id'] == $type['id']) echo 'active_filter_menu';?>">
                <?php echo $type['tour_type']?>
            </div></a>
        </div>
    </div>
    <?php }?>

    
   
