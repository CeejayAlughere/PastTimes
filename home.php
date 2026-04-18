<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

include 'components/wishlist_cart.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Past Times</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
 <!-- Ganpati  -->
<div class="header-1">

    <a href="home.php" class="logo"><span> </span></a>
                         
 <!--End Ganpati  -->
  
</div>
<?php include 'components/user_header.php'; ?>

<div class="home-bg">

<section class="home">

   <div class="swiper home-slider">
   
   <div class="swiper-wrapper">

      <!-- Slide 1 -->
      <div class="swiper-slide slide">
         <div class="image">
            <img src="./images/PastTimes-logo.png" alt="">
         </div>
         <div class="content">
            <span>Timeless Style, Second Chance</span>
            <h3>Welcome to PastTimes</h3>
             <span>Discover unique second-hand fashion pieces that bring the past back to life. Affordable, stylish, and sustainably sourced just for you.</span> <br>
            <a href="shop.php" class="btn">Shop Now</a>
         </div>
      </div>

             <!-- Slide 2  -->
      <div class="swiper-slide slide">
         <div class="image">
            <img src="./images/tshirt-logo.png" alt="">
         </div>
         <div class="content">
            <span>Save Money. Save the Planet.</span>
            <h3>Sustainable Fashion</h3>
            <span>Every item at PastTimes helps reduce waste while keeping your wardrobe fresh and unique. Look good while doing good.</span> <br>
            <a href="shop.php" class="btn">Browse Collection</a>
         </div>
      </div>

             <!-- Slide 3  -->
      <div class="swiper-slide slide">
         <div class="image">
            <img src="./images/home-img3.png" alt="">
         </div>
         <div class="content">
            <span>One-of-a-Kind Finds</span>
            <h3>Stand Out in Style</h3>
            <span>From retro classics to modern gems,find pieces you won’t see anywhere else, your style, your story.</span> <br>
            <a href="shop.php" class="btn">Explore Now</a>
         </div>
      </div>

   </div>

      <div class="swiper-pagination"></div>

   </div>

</section>

</div>

<section class="home-products">

   <h1 class="heading">Latest products</h1>

   <div class="swiper products-slider">

   <div class="swiper-wrapper">

   <?php
     $select_products = $conn->prepare("SELECT * FROM `products` LIMIT 6"); 
     $select_products->execute();
     if($select_products->rowCount() > 0){
      while($fetch_product = $select_products->fetch(PDO::FETCH_ASSOC)){
   ?>
   <form action="" method="post" class="swiper-slide slide">
      <input type="hidden" name="pid" value="<?= $fetch_product['id']; ?>">
      <input type="hidden" name="name" value="<?= $fetch_product['name']; ?>">
      <input type="hidden" name="price" value="<?= $fetch_product['price']; ?>">
      <input type="hidden" name="image" value="<?= $fetch_product['image_01']; ?>">
      <button class="fas fa-heart" type="submit" name="add_to_wishlist"></button>
      <a href="quick_view.php?pid=<?= $fetch_product['id']; ?>" class="fas fa-eye"></a>
      <img src="uploaded_img/<?= $fetch_product['image_01']; ?>" alt="">
      <div class="name"><?= $fetch_product['name']; ?></div>
      <div class="flex">
         <div class="price"><span> R </span><?= $fetch_product['price']; ?><span></span></div>
         <input type="number" name="qty" class="qty" min="1" max="99" onkeypress="if(this.value.length == 2) return false;" value="1">
      </div>
      <input type="submit" value="add to cart" class="btn" name="add_to_cart">
   </form>
   <?php
      }
   }else{
      echo '<p class="empty">no products added yet!</p>';
   }
   ?>

   </div>

   <div class="swiper-pagination"></div>

   </div>

</section>

<!-- newsletter section starts  -->

<section class="newsletter" id="newsletter">

    <h1>Newsletter</h1>
    <p>Get In Touch For Latest Discounts And Updates</p>
    <form action="contactus.php" method="post">

                  
        <input type="text" placeholder="Enter Your Name" ><br>
                   
                    
        <input type="email" placeholder="Enter Your Email">

        <textarea type="txt" placeholder="Enter Your Message"></textarea>
                  
        <input type="submit" class="btn" >
    </form>

</section>

<!-- newsletter section ends -->



 <!-- deal section starts  -->

<section class="deal" id="deal">

<h1 class="heading"> <span> BEST DEALS </span> </h1>


<div class="icons-container">


    <div class="icons">
        <i class="fa fa-shipping-fast fa-5"></i> 
        <h3>Fast Delivery</h3>
        <p>Five Star Rating </p>

    </div>

    <div class="icons">
        <i class="fa fa-camera-retro fa-5x"></i> 
        <h3>Easy to use</h3>
        <p>Simple</p>

    </div><div class="icons">
        <i class="fa fa-comment fa-5x"></i> 
        <h3>Chat with us</h3>
        <p>Connect</p>

    </div>
   
</div>

</section>

<!-- deal section ends -->





<?php include 'components/footer.php'; ?>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".home-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
    },
});

 var swiper = new Swiper(".category-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
         slidesPerView: 2,
       },
      650: {
        slidesPerView: 3,
      },
      768: {
        slidesPerView: 4,
      },
      1024: {
        slidesPerView: 5,
      },
   },
});

var swiper = new Swiper(".products-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      550: {
        slidesPerView: 2,
      },
      768: {
        slidesPerView: 2,
      },
      1024: {
        slidesPerView: 3,
      },
   },
});

</script>

</body>
</html>