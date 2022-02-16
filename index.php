<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Interesting Movie Names </title>
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        h1{
            text-align: center;
            padding: 10px;
            margin: 0 auto;
        }
        table, th, td {
            border: 0.1px solid #000;
            padding: 1px 5px;
        }
        table{
            border-collapse: collapse;
            width: 90%;
            margin: 0 auto;
            color: #3736D9;
            font-size: 22px;
            text-align: left;
        }
        th{
            background-color: #35C1FB;
            color: #fff;
        }
        tr:nth-child(even){background-color: #F5CBA7; color:#000;};
    </style>
</head>
<body>
    <?php 
    // Connecting to the database
    $conn = mysqli_connect("localhost","root","","int_movies");
    if ($conn -> connect_errno) {
        echo "Failed to connect to Database: " . $conn -> connect_error;
        exit();
      }
    ?>
    <h1>Interesting Movies - Actor/Actress, Year of Release & Director</h1>
    <table>
        <tr>
            <th>Sr.No.</th>
            <th>Movie Name</th>
            <th>Lead Actor/Actress</th>
            <th>Release Year</th>
            <th>Director</th>
        </tr>
        <?php
        // Selecting the columns from the table called movies
            $sql = "SELECT sr, movie_name, cast, yor, director from movies";
            $result = $conn-> query($sql);

            if($result -> num_rows > 0){ // checking for the data availability
                while($row = $result-> fetch_assoc()){
                    $lead_actors = str_replace(',', "</br >", $row["cast"]);    // Replacing comma to break. To get the each name of lead actor in new line
                    echo "<tr><td>".$row["sr"]."</td><td>".$row["movie_name"]."</td><td>".$lead_actors."</td><td>".$row["yor"]."</td><td>".$row["director"]."</td></tr>"; //Representing the data in table format
                }
                echo "</table>";
            }
            else {
                // it will execute only if there isn't any row found in the database.
                echo "Sorry! Sainath don't like any movie.";
            }
            $conn-> close();
            ?>
    </table>
</body>
</html>