<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Floatfry</title>
    <meta name="title" content="website-design">
    <link rel="km icon" href="./imgbin_chili-con-carne-frying-pan-stock-pots-cookware-png.png" type="image/svg+xml">
    <link rel="stylesheet" type="text/css" href="materialstyle.css" />
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 </head>


  <body>
    <img src="./Screenshot_2023-10-03_at_15.16.27-removebg-preview.png" alt="img">
    <h1>Materials</h1>
  <button class="btn" onclick="goBack()">
    <i class="fa fa-angle-left"></i>
</button>
    
    <form  method="GET" action="" >
     <div class="search-box" >
      <input class = "search-txt" type="text" name="search" value ="<?php if(isset($_Get['search'])){echo $_GET['search'];}?>" placeholder="Search" required>
     <button type="submit" class="search-btn" onclick="section_page()">
       <i class="fa fa-search"></i>
     </button>

     </div>
    </form>
    
    
     <div id="section" class="sec">
        <div class="section">
           <div><button onclick="close_section()" class="close_btn">
            <i class="fa fa-close"></i>
            </button> </div> 
            <?php include('materialsearch.php')?>
            
            <div><button onclick="placeOrder()" class= "placeOrder_btn">Place an order</button></div>
        </div>
     </div>

    <div id="section2" class="sec">
        <div class="section2">
            <div><button onclick="close_section2()" class="close_btn">
            <i class="fa fa-close"></i>
            </button>     </div>  
            <table>
            <th>Quantity</th>
            <th>When needed</th>
            </table>    
            <button onclick="order()" class= "order_btn">Order</button>
        </div>
    </div>

    <script>

        function section_page() { 
            document.getElementById("section").style.display = "block";
        }
        
        function placeOrder() {
            document.getElementById("section2").style.display = "block";
        }

        function close_section() {
            document.getElementById("section").style.display = "none";
        }
        function close_section2() {
            document.getElementById("section2").style.display = "none";
        }
        function goBack() {
        window.history.back();
    }
  
    </script>
    <?php include('materialtable.php');?>
  

  </body>
</html>

