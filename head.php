<?php
require_once 'config/ini.php';
require_once 'config/security.php';
require_once 'config/str_convert.php';



$seo_title = $seo_keyword = $seo_description = '';

if (strpos($_SERVER['SCRIPT_NAME'], 'gallery.php') !== false && !empty($_GET['cat'])) {
    $cat_name = $str_convert->to_query($_GET['cat']);
    $seo_category = sql_read('select category, seo_keyword, seo_description from category where category like ? limit 1', 's', '%'.$cat_name.'%');
    $seo_title = ' - '.$seo_category['category'];
    $seo_keyword =  $seo_category['seo_keyword'];
    $seo_description = $seo_category['seo_description'];
}

if (strpos($_SERVER['SCRIPT_NAME'], 'tours.php') !== false && !empty($_GET['ty'])) {
    $tour_type_name = $str_convert->to_query($_GET['ty']);
    $seo_tour_type = sql_read('select tour_type, seo_keyword, seo_description from tour_type where tour_type like ? limit 1', 's', '%'.$tour_type_name.'%');
    $seo_title = ' - '.$seo_tour_type['tour_type'];
    $seo_keyword =  $seo_tour_type['seo_keyword'];
    $seo_description = $seo_tour_type['seo_description'];
}

if (strpos($_SERVER['SCRIPT_NAME'], 'tour_details.php') !== false && !empty($_GET['p'])) {
    $tour_name = $str_convert->to_query($_GET['p']);
    $seo_tour = sql_read("select * from tour where status=1 and name like ? limit 1", 's', $tour_name);
    $seo_title = ' - '.$seo_tour['name'];
    $seo_keyword =  $seo_tour['seo_keyword'];
    $seo_description = $seo_tour['seo_description'];
}

if (strpos($_SERVER['SCRIPT_NAME'], 'page.php') !== false && !empty($_GET['t'])) {
    $title = $str_convert->to_query($_GET['t']);
    $seo_page = sql_read("select title, seo_keyword, seo_description from pages where status = ? and title like ? limit 1", 'is', array(1, '%'.$title.'%'));
    $seo_title = ' - '.$seo_page['title'];
    $seo_keyword =  $seo_page['seo_keyword'];
    $seo_description = $seo_page['seo_description'];
}

?>
<!DOCTYPE html>
<head>
    <title>Borneo Transverse <?php echo $seo_title?></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="images/icon.png">

    <?php if(!empty($seo_keyword)){?>
    <meta name="keywords" content="<?php echo $seo_keyword?>">
    <?php }?>
    <?php if(!empty($seo_description)){?>
    <meta name="description" content="<?php echo $seo_description?>">
    <?php }?>

    <script src="<?php echo ROOT?>js/jquery.min.js"></script>
    <script src="<?php echo ROOT?>js/popper.min.js"></script>
    <script src="<?php echo ROOT?>js/4.3.1/bootstrap.min.js"></script>
    <script src="<?php echo ROOT?>js/bootstrap.min.js"></script>
    <script src="<?php echo ROOT?>js/jquery-3.5.0.js"></script>
    

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?php echo ROOT?>css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo ROOT?>fontawesome/css/all.min.css">
    <link rel="stylesheet" href="<?php echo ROOT?>fontawesome/css/all.css">
    <link rel="stylesheet" href="<?php echo ROOT?>fontawesome/css/solid.css">
    <link rel="stylesheet" href="<?php echo ROOT?>fontawesome/css/solid.min.css">


    <script src="<?php echo ROOT?>js/animate.js"></script>
    <link rel="stylesheet" href="<?php echo ROOT?>css/animate.css">
    

    <link href="<?php echo ROOT?>css/custom.css" rel="stylesheet" />
    
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet"> 
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500&display=swap" rel="stylesheet">
    <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
    async defer></script>
    <script type="text/javascript">
    var onloadCallback = function() {
        grecaptcha.render('recaptcha', {
            'sitekey' : '6LdPR5gUAAAAAObMmAHwsTGWbMNB4veEV1u4lTJU'
        });
    };
    </script>


</head>