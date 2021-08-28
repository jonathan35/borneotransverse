<div class="row">
    <div class="col-12" style="z-index:16 !important; position:fixed; z-index:2; background:white; box-shadow:0 2px 4px rgba(0,0,0,.4)">
        <div class="row">
            <div class="col-12 col-md-3 offset-md-1">
                <div class="row">
                    <div class="col-12 p-1 d-flex justify-content-between">
                        <div class="col-9 col-md-12 p-0 text-left">
                            <a href="<?php echo ROOT?>home">
                            <img src="<?php echo ROOT?>images/logo.png" class="img-fluid"></a>
                        </div>
                        <div class="col-3 p-2 text-right">
                            <button class="d-inline d-md-none navbar-toggler menu-toggler" type="button" onclick="$('#toggleMenu, #toggleMenu2, .page_title').fadeToggle(); $('#toggleMenu').removeClass('d-lg-inline');">
                            <!--data-toggle="collapse" data-target="#toggleMenu" aria-controls="toggleMenu" aria-expanded="false" aria-label="Toggle navigation"-->
                                <span class="navbar-toggle-icon">
                                    <i class="fas fa-bars burger-menu"></i>
                                </span>          
                            </button>
                        </div>
                    </div>
                </div> 
            </div>
            <div class="col-12 col-md-7 collapse d-md-inline pr-0" id="toggleMenu" style="font-weight:bold; border-top:1px solid #CCC;">
                <div class="row d-flex flex-row text-center justify-content-end pt-0 pb-2 pr-0 mt-1 pt-md-4 pb-md-0">
                    <div class="d-none d-md-inline col-md pr-0">&nbsp;</div>
                    <div class="d-none d-md-inline col-md pr-0">&nbsp;</div>
                    <div class="col-12 col-md pt-2 pb-2">
                        <a href="<?php echo ROOT?>tours" class="hd-menu <?php if(strpos($_SERVER['REQUEST_URI'], '/tours') || strpos($_SERVER['REQUEST_URI'], '/tour_details')) echo 'active-hd-menu';?>">Tour Details</a>
                    </div>
                    <div class="col-12 col-md pt-2 pb-2">
                        <a href="<?php echo ROOT?>best_deal" class="hd-menu <?php if(strpos($_SERVER['REQUEST_URI'], '/best_deal')) echo 'active-hd-menu';?>">Best Deals</a>
                    </div>
                    <div class="col-12 col-md pt-2 pb-2">                       
                        <a href="<?php echo ROOT?>news" class="hd-menu <?php if(strpos($_SERVER['PHP_SELF'], '/news.php')) echo 'active-hd-menu';?>">Announcement</a>
                    </div>
                    <div class="col-12 col-md pt-2 pb-2">
                        <a href="<?php echo ROOT?>gallery" class="hd-menu <?php if(strpos($_SERVER['PHP_SELF'], '/gallery.php')) echo 'active-hd-menu';?>">Photo Gallery</a>
                    </div>               
                </div>
            </div>
        </div>

        <div class="row collapse d-md-block" id="toggleMenu2" style="background-color:#170C75;">
            <div class="col-12 col-md-10 offset-md-1 p-0">

                <?php 
                $pages = sql_read('select * from pages where status=1 order by position asc, id desc');
    
                $title_get = $str_convert->to_eye($_GET['t']);
                $title_get2 = str_replace(' and ',' & ',$str_convert->to_eye($_GET['t']));


                $menu_items = array();
                $menu_width = $menu_str = '';
        
                foreach($pages as $p){
                    $menu_items[] = $p['title'];
                }
                foreach($menu_items as $a => $b){$menu_items[$a] .= $b.'aaaaaaaaaaaaaaaaaaaaaaaa';}
                foreach($menu_items as $item){$menu_str .= $item;}
                $each_char_percent = 100/strlen($menu_str);

                foreach($menu_items as $item_str){
                    $menu_width .= round(strlen($item_str)*$each_char_percent,2,PHP_ROUND_HALF_DOWN).'% ';
                }?>
                <style>
                @media (min-width: 576px) {
                    .grid-nav {
                        display: grid; grid-template-columns: <?php echo $menu_width?>;
                    }
                }
                </style>               

                <div class="grid-nav"><!--row d-flex flex-row justify-content-between-->
                    <?php 
                    foreach($pages as $page){
                        $title_url = $str_convert->to_url($page['title']);
                        ?>
                        <div class="d-block d-md-inline col-12 col-md p-2 pr-3 pl-3 text-center <?php if($title_get == $page['title'] || $title_get2 == $page['title']){ echo 'actived-submenu';}?>" style="font-size:12px; color:white;">
                            <a href="<?php echo ROOT.'page/'.$title_url?>" class="submenu"><?php echo 
$page['title']?></a>
                        </div>
                    <?php }?>
                </div>
            </div>
        </div>


    </div>
</div>
