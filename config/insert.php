
<?php


$conn = mysqli_connect("pimawweb1001", "intern", "intern223344", "immasterlist");

if (isset($_POST["import"])) {
    
    $fileName = $_FILES["file"]["tmp_name"];
    
    if ($_FILES["file"]["size"] > 0) {
        
        $file = fopen($fileName, "r");
        fgetcsv($file, 1000, ",");
        while (($column = fgetcsv($file, 10000, ",")) !== FALSE) {
            $sqlInsert = "INSERT into tbl_associate_list (eid, ntid, firstName, lastName, jobLevel, email, supNtid, tower, dateHired, costCenter, directReport, gender, jobTitle, regular, fullTime, country, birthDate)
                   values ('" . $column[0] . "','" . $column[1] . "','" . $column[2] . "','" . $column[3] . "','" . $column[4] . "','" . $column[5] . "','" . $column[6] . "','" . $column[7] . "','" . $column[8] . "','" . $column[9] . "','" . $column[10] . "','" . $column[11] . "','" . $column[12] . "','" . $column[13] . "','" . $column[14] . "','" . $column[15] . "','" . $column[16] . "')";
            $result = mysqli_query($conn, $sqlInsert);
            
            if (! empty($result)) {
                $type = "success";
                $message = "CSV Data Imported into the Database";
            }else{
                // $type = "error";
                // $message = "Problem in Importing CSV Data";
                $type = "success";
                $message = "CSV Data Updated";
                // $sqlUpdate = "UPDATE tblcontacts SET fullname = '" . $column[1] . "', ntid = '" . $column[2] . "' WHERE id = '" . $column[0] . "'";
                $sqlUpdate = "UPDATE tbl_associate_list SET firstName = '" . $column[2] . "', lastName = '" . $column[3] . "', jobLevel = '" . $column[4] . "', email = '" . $column[5] . "', supNtid = '" . $column[6] . "', tower = '" . $column[7] . "', dateHired = '" . $column[8] . "', costCenter = " . $column[9] . ", directReport = '" . $column[10] . "', gender = '" . $column[11] . "', jobTitle = '" . $column[12] . "', regular = '" . $column[13] . "', fullTime = '" . $column[14] . "', country = '" . $column[15] . "', birthDate = '" . $column[16] . "' WHERE eid = '" . $column[0] . "'";
                $result = mysqli_query($conn, $sqlUpdate);
            }
        }
    }
}
?>