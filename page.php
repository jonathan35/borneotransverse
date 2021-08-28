<?php 
include_once 'head.php';

if($_GET['t']){
    $title = $str_convert->to_query($_GET['t']);
    $ffpage = sql_read("select * from pages where status = ? and title like ? limit 1", 'is', array(1, '%'.$title.'%'));
}
?>

<html lang="en">
<body class="container-fluid">
    
    <?php include 'header.php'?>

    <div style="padding:38px;"></div>
    <div class="d-none d-md-block" style="padding:18px;"></div>

    <div class="row">
        <div class="col-12 col-md-10 offset-md-1 pl-2 pr-2 pb-5 pt-5">      
            <h1><?php echo $ffpage['title'];?></h1>
            <div class="row">
                <div class="col-12 p-4">
                    <?php
                    $ffpage['content'] = str_replace(array('../../', '<img'), array(ROOT, '<img class="img-fluid"'), $ffpage['content']);                
                    echo $ffpage['content'];?>
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

