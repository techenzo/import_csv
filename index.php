<!DOCTYPE html>
<html>
<head>
    
        <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>

    <?php
    include('config/insert.php');
    ?>
    <h2>Import CSV file into Database</h2>
    
    <div id="response" class="<?php if(!empty($type)) { echo $type . " display-block"; } ?>"><?php if(!empty($message)) { echo $message; } ?></div>
    <div class="outer-scontainer">
        <div class="row">

            <form class="form-horizontal" action="" method="post"
                name="frmCSVImport" id="frmCSVImport" enctype="multipart/form-data">
                <div class="input-row">
                    <label class="col-md-4 control-label">Choose CSV
                        File</label> <input type="file" name="file"
                        id="file" accept=".csv">
                    <button type="submit" id="submit" name="import"
                        class="btn-submit">Import</button>
                    <br />

                </div>

            </form>

        </div>
            <?php
            $sqlSelect = "SELECT * FROM tbl_associate_list ";
            $result = mysqli_query($conn, $sqlSelect);

               
            
            if (mysqli_num_rows($result) > 0) {
                $sqlCount="SELECT count(*) as total FROM tbl_associate_list";
                $results = mysqli_query($conn, $sqlCount);
                while($row = mysqli_fetch_array($results)){
                    echo 'TOTAL:' .$row['total'];
                }
                
            ?>
            <table id='userTable'>
            <thead>
                <tr>
                    <th>EID</th>
                    <th>NTID</th>
                    <th>FIRST NAME</th>
                    <th>LAST NAME</th>
                    <th>JOB LEVEL</th>
                    <th>EMAIL</th>
                    <th>SUP NTID</th>
                    <th>TOWER</th>
                    <th>DATE HIRED</th>
                    <th>COST CENTER</th>
                    <th>DIRECT REPORT</th>
                    <th>GENDER</th>
                    <th>JOB TITLE</th>
                    <th>REGULAR</th>
                    <th>FULL TIME</th>
                    <th>COUNTRY</th>
                    <th>BIRTH DATE</th>
                </tr>
            </thead>
            
                <?php
                while ($row = mysqli_fetch_array($result)) {

                    // $name = $row['firstName'];
                    // // $string = 'The ñ Ñ fox jumps over the lazy dog.';
                    // $patterns = array();
                    // $patterns[0] = '/0xFFFD (fffd)/';
                    // $patterns[1] = '/Ñ/';
                    // $replacements = array();
                    // $replacements[1] = 'ñ';
                    // $replacements[0] = 'ñ';
                    // $match =  preg_replace($patterns, $replacements, $name);

                ?>
                    
                <tbody>
                <tr>
                    <td><?php  echo $row['eid']; ?></td>
                    <td><?php  echo $row['ntid']; ?></td>
                    <td><?php  echo $row['firstName']; ?></td>
                    <td><?php  echo $row['lastName']; ?></td>
                    <td><?php  echo $row['jobLevel']; ?></td>
                    <td><?php  echo $row['email']; ?></td>
                    <td><?php  echo $row['supNtid']; ?></td>
                    <td><?php  echo $row['tower']; ?></td>
                    <td><?php  echo $row['dateHired']; ?></td>
                    <td><?php  echo $row['costCenter']; ?></td>
                    <td><?php  echo $row['directReport']; ?></td>
                    <td><?php  echo $row['gender']; ?></td>
                    <td><?php  echo $row['jobTitle']; ?></td>
                    <td><?php  echo $row['regular']; ?></td>
                    <td><?php  echo $row['fullTime']; ?></td>
                    <td><?php  echo $row['country']; ?></td>
                    <td><?php  echo $row['birthDate']; ?></td>
                
                </tr>   
                <?php } ?>
                </tbody>
        </table>
        <?php } ?>
    </div>
        <script src="jquery-3.2.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert"></script>
</body>

</html>