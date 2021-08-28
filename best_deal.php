<?php 
require_once 'config/ini.php';
require_once 'config/security.php';
include_once 'head.php';


       
if(!empty($_GET['p'])){
    $tour_name = $str_convert->to_query($_GET['p']);
    $tour = sql_read('select * from tour where status=1 and name like ? limit 1', 's', $tour_name);
    //debug($tour);

    if(!empty($tour['tour_type'])){
        $type = sql_read('select * from tour_type where status=1 and id=? limit 1', 'i', $tour['tour_type']);
    }
    if(!empty($tour['category'])){
        $category = sql_read('select * from category where status=1 and id=? limit 1', 'i', $tour['category']);
    }
    if(!empty($tour['location'])){
        $location = sql_read('select * from location where status=1 and id=? limit 1', 'i', $tour['location']);
    }
    
}


?>
<html lang="en">
<body class="container-fluid" style="background:#EFEfEf;">
    
    <?php include 'header.php'?>

    <div class="row p-0">
        <div class="col-12 col-md-10 offset-md-1 pb-5" style="padding-top:160px;">
            <div class="row">
         
                <div class="col-12">

                    <div class="row">
                        <div class="col-12 p-1 pl-4 pr-4 p-md-3" style="border-bottom:1px solid #CCC;">
                            
                            <div class="row mb-3">
                                <div class="col-12">                                    
                                    <?php if(file_exists($tour['photo'])){?>
                                        <img src="<?php echo ROOT.$tour['photo']?>" width="100%">
                                    <?php }else{?>
                                        <img src="<?php echo ROOT.'images/SD-default-image.png'?>" class="img-fluid">
                                    <?php }?>
                                </div>                                                              
                            </div>
                            <div class="row">
                                <div class="col-12 text-black" style="font-size:28px; line-height:1.2;">
                                    <?php echo $tour['name']?>
                                </div> 
                            </div>
                        </div>
                    </div>

                    <div class="row pt-4">
                        <div class="col-12 col-md-7">
                            <?php 
                            $tour['full_description'] = str_replace(array('../../', '<img'), array(ROOT, '<img class="img-fluid"'), $tour['full_description']);                
                            echo $tour['full_description'];                            
                            ?>
                        </div>

                        <div class="col-12 col-md-4 offset-md-1">
                            <?php include 'message.php';?>                            
                        </div>
                        
                    </div>
                    
                </div>






            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-12">            
            <?php include 'footer.php';?>
        </div>
    </div>
</body>
</html>
