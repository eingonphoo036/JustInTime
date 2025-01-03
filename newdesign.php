<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Float Fry</title>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="newdesign.css">
</head>
<body>

    <img src="Screenshot_2023-10-03_at_15.16.27-removebg-preview.png" alt="img">
    <h1>Product</h1>
    <button class="btn" onclick="goBack()">
        <i class="fa fa-angle-right"></i>
    </button>

    <div class="line">
        <div class="box">
            <p>Design New Product</p>
            <form action="newinsert.php" method="POST">
                <table border="1">
                    <tbody>
                        <tr>
                            <td>Colour</td>
                            <td><input type="text" name="colour"></td>
                        </tr>
                        <tr>
                            <td>Size</td>
                            <td><input type="text" name="size"></td>
                        </tr>
                        <tr>
                            <td>Material</td>
                            <td><input type="text" name="material"></td>
                        </tr>
                        <tr>
                            <td>Machine</td>
                            <td><input type="text" name="machine"></td>
                        </tr>
                        <tr>
                            <td>Technical Specification</td>
                            <td><textarea name="specification"></textarea></td>
                        </tr>
                    </tbody>
                </table>
                <button type="submit" class="btn2">Upload New Product Design</button>
            </form>
        </div>
        <div class="pic">
            <img class="Screenshot (402).png">
        </div>
    </div>
<script>
  function goBack() {
        window.history.back();
    }
     </script>
    <div class="button-container">
        <button class="btn1">Upload Photo</button>
    </div>

</body>
</html>
