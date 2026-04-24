<?php

include 'components/connect.php';

session_start();

if (isset($_SESSION['user_id'])) {
   $user_id = $_SESSION['user_id'];
} else {
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>About Us</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>

<body>

   <?php include 'components/user_header.php'; ?>

   <!-- About Us Section -->
<section class="about">
   <h1 class="heading">About Us</h1>
   <div class="row">
      <div class="image">
         <img src="images\about-img.png" alt="About PastTimes">
      </div>
      <div class="content">
         <h3>Our Story</h3>
         <p>PastTimes was born from a simple idea — that great fashion shouldn't cost the earth, literally or financially. We started as a small collective of second-hand fashion lovers in South Africa who believed that every piece of clothing deserves a second life.</p>
         <p>Today, we connect buyers and sellers across the country, making sustainable fashion accessible to everyone. Whether you're hunting for a retro gem, clearing out your wardrobe or even reselling brand new products, PastTimes is your <i>trusted</i> marketplace.</p>
         <a href="shop.php" class="btn" style="display:inline-block; width:auto;">Shop Now</a>
      </div>
   </div>
</section>

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


   <section class="reviews">

      <h1 class="heading">Client's Reviews</h1>

      <div class="swiper reviews-slider">

         <div class="swiper-wrapper">

            <div class="swiper-slide slide">
               <img src="images/pic-5.jpg" alt="">
               <p>I’ve been shopping here for a while now and I’m honestly impressed with the consistency.
                  The clothes are always in great condition and exactly as described.
                  Delivery can sometimes come a bit later than expected depending on the time and day you place your order, but overall the service is reliable and worth it.</p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>Thando Mkhize</h3>
            </div>

            <div class="swiper-slide slide">
               <img src="images/pic-1.jpg" alt="">
               <p>I really like the variety on this site.
                  You can find unique pieces that you won’t easily see in regular retail stores, which makes shopping feel more exciting.
                  As long as you check the product details and sizing properly, you can get some really good deals. It’s definitely a great platform for second-hand fashion lovers looking for something different.</p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>Michael van der Merwe</h3>
            </div>

            <div class="swiper-slide slide">
               <img src="images/pic-3.jpg" alt="">
               <p>PastTimes is great if you choose good sellers.
                  It has really helped boost eCommerce opportunities in South Africa by giving people an easy way to sell and buy items online.
                  The platform is simple to use, and once you understand how listings work, it becomes a smooth experience for both buyers and sellers.</p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>Kaushal Shah</h3>
            </div>

            <div class="swiper-slide slide">
               <img src="images/pic-7.jpg" alt="">
               <p>Using PastTimes for online shopping for almost 3 years has been an outstanding experience.
                  I’ve enjoyed how convenient the service is, especially with options like vouchers and pickup points that help reduce costs.
                  The platform has stayed reliable over time, and I appreciate how it continues to improve its services while keeping things affordable.</p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>Ethan Naidoo</h3>
            </div>

            <div class="swiper-slide slide">
               <img src="images/pic-2.jpg" alt="">
               <p>Very convenient shopping experience overall. I like being able to browse from home and still find good deals without rushing.
                  The checkout process is simple and quick, and I’ve never had issues placing an order. It really makes online shopping stress-free and enjoyable.</p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>Ranjit Chaudhary</h3>
            </div>

            <div class="swiper-slide slide">
               <img src="images/pic-6.jpg" alt="">
               <p>PastTimes is really impressive! I’ve ordered many products over time and have never experienced any scams or major issues.
                  Deliveries usually arrive on time, and the process is smooth from ordering to receiving. It’s a trustworthy platform that I’ll definitely keep using for future purchases.</p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>Pranil Poudel</h3>
            </div>

         </div>

         <div class="swiper-pagination"></div>

      </div>

   </section>









   <?php include 'components/footer.php'; ?>

   <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

   <script src="js/script.js"></script>

   <script>
      var swiper = new Swiper(".reviews-slider", {
         loop: true,
         spaceBetween: 20,
         pagination: {
            el: ".swiper-pagination",
            clickable: true,
         },
         breakpoints: {
            0: {
               slidesPerView: 1,
            },
            768: {
               slidesPerView: 2,
            },
            991: {
               slidesPerView: 3,
            },
         },
      });
   </script>

</body>

</html>