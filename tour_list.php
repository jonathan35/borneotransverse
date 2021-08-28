<?php 
//require_once 'config/ini.php';
//require_once 'config/security.php';
//include_once 'head.php';



$type_cond = $cat_cond = $loc_cond = $key_cond = '';
$params[] = 1;
$sta_cond = ' status=? ';

if(!empty($_POST['keyword'])){//This is tour type    
    $key_cond = " and name like ? ";
    $params[] = "%".$_POST['keyword']."%";
}

if(!empty($selected_type['id'])){//This is tour type    
    $type_cond = " and tour_type=? ";
    $params[] = $selected_type['id'];
}
if(!empty($selected_category['id'])){//This is category
    $cat_cond = " and category=? ";
    $params[] = $selected_category['id'];
}
if(!empty($slocation['id'])){//This is location
    $loc_cond = " and location=? ";
    $params[] = $slocation['id'];
}

$tour_table = 'tour';
$tour_details = 'tour_details';
if(!empty($_GET['best_deal'])){//This is location
    $tour_table = 'best_deal';
    $tour_details = 'best_deal_details';
}



$tours = sql_read("select * from $tour_table where $sta_cond $key_cond $type_cond $cat_cond $loc_cond order by position asc, id asc", str_repeat('s',count($params)), $params);


$types = sql_read('select * from tour_type where status=1');
foreach($types as $type){
    $tour_type[$type['id']] = $type['tour_type'];
}
$category_ds = sql_read('select * from category where status=1');
foreach($category_ds as $category_d){
    $categories[$category_d['id']] = $category_d['category'];
}
$location_ds = sql_read('select * from location where status=1');
foreach($location_ds as $location_d){
    $locations[$location_d['id']] = $location_d['location'];
}


if(!isset($tours)){
    echo '<div class="row"><div class="col-12"><div class="row"><div class="col-12 p-2">No tour found</div></div></div></div>';
}else{
    echo '<div class="row"><div class="col-12"><div class="row"><div class="col-12 p-2">'.count($tours).' tours found</div></div></div></div>';    
}

$itemCount=1;
$maxPerPage=18;



?>
<div class="row">

    <?php foreach((array)$tours as $tour){?>
        
        <div class="col-12 col-md-4 p-4 page page<?php echo $itemCount?>" style="<?php if($itemCount>$maxPerPage){?> display:none;<?php }?>">
            <a href="<?php echo ROOT.$tour_details?>/<?php echo $str_convert->to_url($tour['name'])?>">
            <div class="row">
                <div class="col-12 tour-card">
                    <div class="row">
                        <div class="col-12 p-0 bg-cover" style="height:200px; background-image:url('<?php if(empty($tour['photo']) || !file_exists($tour['photo'])){
                            echo ROOT.'images/SD-default-image.png';
                        }else{
                            echo ROOT.$tour['photo'];
                        }?>')">
                        </div>
                        <div class="col-12">
                            <div class="row">
                                <div class="col-12 pt-2 text-center" style="height:84px; overflow:hidden; font-size:16px; background:#DFDFDF; color: black;">
                                    <?php echo $tour['name']?>
                                </div>
                            </div>
                          

                        </div>
                    </div>
                </div>

            </div>
            </a>
        </div>
        
    <?php 
    $itemCount++;
    }?>
</div>


<div class="row">
    <div class="col-12 p-0">
        <?php include 'paging.php';?>
    </div>
</div>
