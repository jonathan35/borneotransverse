<?php 
require_once 'config/ini.php';
require_once 'config/security.php';
include_once 'head.php';
?>


<html lang="en">
<body class="container-fluid">
    
    <?php include 'header.php'?>

    <div style="padding:38px;"></div>
    <div class="d-none d-md-block" style="padding:18px;"></div>

    <div class="row">
        <div class="col-12 p-0 text-center">      
            <?php include 'banner.php'?>
        </div>
    </div>

    <div class="row">
        <div class="col-12 text-center p-4 pt-5 pb-5" style="background:white;">
        <?php 
        $home_content = sql_read('select * from content where id = 2 limit 1');        
        echo str_replace('../../',ROOT,$home_content['content']);
        ?>
        </div>
    </div>

    <div class="row">
        <div class="col-12 p-4 pt-5 pb-5" style="background:#585d69;">

            <div class="row">
                <div class="col-12 col-md-10 offset-md-1 pt-4 pb-4">
                    <h1 class="d-none d-md-block" style="color:white;">Choose Your Trip</h1>
                    <h2 class="d-block d-md-none text-center" style="color:white;">Choose Your Trip</h2>
                </div>
            </div>        
            <div class="row">
                <div class="col-12 col-md-3 offset-md-1 pr-5 text-center text-md-left">                    
                    <div class="text-white">
                        From ocean depths to mountain tops, Borneo has an array of exciting destinations to explore
                        <br><br><br>
                    </div>                   
                    <div class="d-none d-md-inline p-0">
                        <img src="images/undraw_Confirmation_re_b6q5.svg" class="img-fluid">  
                    </div>              
                </div>
                <div class="col-12 col-md-7 p-3 text-center">
                    <div class="row">
                        <?php 
                        $types = sql_read("select * from tour_type where status=1 order by position asc, tour_type asc limit 6");
                        $x = 1;
                        foreach($types as $type){?>                            
                            <div class="col-12 col-md-4 text-white pb-5 pl-0 pr-0">
                                <a href="<?php echo ROOT?>tours/<?php echo $str_convert->to_url($type['tour_type'])?>">
                                <div class="bg-cover img-fluid" style="height:200px; background-image:url('<?php echo ROOT.$type['photo']?>')"></div>
                                <div class="p-2" style="font-weight:bold; color:white;"><?php echo $type['tour_type']?></div></a>
                            </div>
                        <?php 
                        $x++;
                        }?>
                    </div>
                </div>
                

            </div>            
        </div>
    </div>


    <div class="row">
        <div class="col-12 p-4 pt-5 pb-5" style="background:#DDD;">
            <div class="row">
                <div class="col-12 col-md-10 offset-md-1 pl-0 pr-0 pt-3 pb-3 text-center">
                    <h1 class="p-3 text-black">Latest Tour Packages</h1>
                    <div class="pb-5 text-black">
                    Here are some of our top Borneo must-dos and see that's not to be missed
                    </div>
                    <div class="row">
                    <?php 
                    $latests = sql_read("select * from tour where status=1 and name like 'Batang Ai%' order by position asc limit 5");
                    
                    foreach($latests as $latest) {?>
                        <div class="col-12 col-md text-white pb-5">
                            <div class="row">
                                <div class="col-12 p-1" style="color:black;">
                                    <div class="card">
                                    <div class="card-body pt-1 pb-2 lt-light" style="background:#EFEFEF; ">

                                        <div class="row">
                                            <div class="bg-cover img-fluid p-0" style="width:100%; height:130px; background-image:url('<?php echo ROOT.$latest['photo']?>'); "></div>
                                        </div>
                                        <div class="row pl-1 pr-1">
                                            <div class="col-12 p-0" style="overflow:hidden; border:none; ">
                                                
                                                <?php echo $latest['name'];?>
                                                
                                                <div class="row pt-3">
                                                    <div class="col-12 text-center">
                                                        <a href="<?php echo ROOT?>tour_details/<?php echo $str_convert->to_url($latest['name'])?>" class="btn lt-light latest-btn">VIEW TOUR</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    </div>



                                </div>
                            </div>
                        </div>
                    <?php }?>
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
