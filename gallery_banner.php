<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">


</div>

<div class="gallery-section">
<?php 

$cb = @count($galleries);

if($cb>0){?>

    <div class="card form-rounded card-gallery">
        <div id="CarouselGallery" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <?php for($n=0; $n<$cb; $n++){?>
                <li class="indicator-<?php echo $n?>" data-target="#CarouselGallery" data-slide-to="<?php echo $n?>" class="<?php if($c==0) echo 'active'; ?>" style="border:1px solid #333;"></li>                
                <?php }?>
            </ol>
            <div class="carousel-inner" style="padding-top:30px;">
                <?php 
                $c = 1;
                foreach((array)$galleries as $gallery){?>
                <div class="carousel-item <?php if($c==1) echo 'active'; ?>" style="height:auto;">
                    <div class="row">
                        <div class="col-12 text-center">
                            <div style="background-image:url('<?php echo ROOT.$gallery['photo']?>'); height:90vh;" class="bg-contain"></div>
                            <div><?php echo $gallery['caption']?></div>
                        </div>
                    </div>
                </div>
                <?php 
                $c++;
                }
                
                if($cb>1){?>
                <a class="carousel-control-prev" href="#CarouselGallery" role="button" data-slide="prev">
                    <span style="background:#333; padding:10px; height:40px;">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span></span>
                </a>
                <a class="carousel-control-next" href="#CarouselGallery" role="button" data-slide="next">
                    <span style="background:#333; padding:10px; height:40px;">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span></span>
                </a>
                <?php }?>
            </div>
        </div>
    </div>

<script>

$('.carousel').carousel();
</script>

<?php }?>

</div>