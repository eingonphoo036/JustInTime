<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatiable" content="ie=edge">
    <title>Float Fry</title>
    <link rel="stylesheet" href="machine.css">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    

</head>
<body>

<img src="./Screenshot_2023-10-03_at_15.16.27-removebg-preview.png" alt="img">

   <button class="btn" onclick="goBack()">
    <i class="fa fa-angle-left"></i>
</button>
    <p>Plotter printing machines</p>   
    <p>Details about the machines such as capacity</p>
    
    <p>-------------------------------------------------------------------------------------------------</p>
    <p>------------------------------------------------------------------------------------------------</p>
    <p>-------------------------------------------------------------------------------------------------</p>
    <form  method="GET" action="" >
     <div class="search-box" >
    
     <input class = "search-txt" type="text" name="search"  placeholder="Check Availability" required>
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
            <div class = "scrollable-table" >
            <?php include('machine_search.php')?>
            </div>
    
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

    <div class = "scrollable-table" >
    <?php include('machinTable.php'); ?>
    </div>


</body>
</html>