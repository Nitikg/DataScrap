<?php


ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
// Include the wp-config.php file (assuming it's in the parent directory)
// Adjust the path if your wp-config.php is located elsewhere
if (file_exists('wp-config.php')) {
    require_once 'wp-config.php';
} else {
    die("Error: Could not find wp-config.php. Make sure the path is correct.");
}

// Establish the database connection
$conn = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);

}


if ($_SERVER['REQUEST_METHOD'] === 'GET') {
	
	
	if (isset($_GET['action']) && $_GET['action'] === 'customFunction') {
    customFunction();
}
	
	
	
	
	
	
   
}


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $target_dir = "uploads/";
    $target_file = $target_dir . basename($_FILES["sql_file"]["name"]);

    // Check if the file is a SQL file
    $file_type = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
    if ($file_type != "sql") {
        echo "<p>Error: Only SQL files are allowed.</p>";
    } else {
        // Attempt to move the uploaded file
        if (move_uploaded_file($_FILES["sql_file"]["tmp_name"], $target_file)) {
            echo "<p>File uploaded successfully. Processing...</p>"; // Initial feedback

            // Attempt to read and execute the SQL file
            $sql_queries = file_get_contents($target_file);
            if ($sql_queries) {
                // Split queries by semicolon, but handle multi-line statements
                $queries = preg_split('/~/', $sql_queries);

                $total_queries = count($queries);
                $executed_queries = 0;

                foreach ($queries as $query) {
					
                     $query = trim($query);
					// echo "$query";
                    if (!empty($query)) {
                        $result = $conn->query($query);
                        if (!$result) {
                            echo "<p>Error executing SQL at query $executed_queries: " . $conn->error . "</p>";
							echo "<p>$query</p>";
                            break; 
                        } else {
                            $executed_queries++;
                            // // Provide progress feedback (optional)
                            // $progress = round(($executed_queries / $total_queries) * 100);
                            // echo "<p>Progress: $progress%</p>"; 
                            //flush(); // Force output to be sent to the browser immediately
                        }
                    }
                }

                if ($executed_queries == $total_queries) {
                    echo "<p>SQL file executed successfully.</p>";
					flush();
                }
				$conn->close();

            } else {
                echo "<p>Error reading SQL file.</p>";
            }
        } else {
            echo "<p>Error uploading file.</p>";
        }
    }
}

function customFunction() {
	
	// Establish the database connection
$conn = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
    // Your custom PHP code goes here
	$query = "delete FROM wp_jrf23a6sz5_posts WHERE post_type='lp_question';";
	$result = $conn->query($query);
	if (!$result) {
                            echo "<p>Error executing SQL at query $executed_queries: " . $conn->error . "</p>";
							echo "<p>$query</p>";
	}
	$query = "TRUNCATE table wp_jrf23a6sz5_learnpress_question_answers;";
                           
	$result = $conn->query($query);
	if (!$result) {
                            echo "<p>Error executing SQL at query $executed_queries: " . $conn->error . "</p>";
							echo "<p>$query</p>";
	}
	
	$query = "truncate table wp_jrf23a6sz5_learnpress_quiz_questions	;";
                           
	$result = $conn->query($query);
	if (!$result) {
                            echo "<p>Error executing SQL at query $executed_queries: " . $conn->error . "</p>";
							echo "<p>$query</p>";
	}
           
	$query = "truncate table wp_jrf23a6sz5_postmeta;"	;	   
	$result = $conn->query($query);
	if (!$result) {
                            echo "<p>Error executing SQL at query $executed_queries: " . $conn->error . "</p>";
							echo "<p>$query</p>";
                            
	}
	
	
    echo "Button clicked! All question deleted.";
}



?>

<!DOCTYPE html>
<html>
<head>
    <title>Upload and Execute SQL</title>
</head>
<body>
    <form method="post" enctype="multipart/form-data">
        <input type="file" name="sql_file" id="sql_file">
        <input type="submit" value="Upload & Execute">
    </form>
	
	<br>
	<br>
	<br>
	<br>
	<button onclick="customFunction()">Delete Questions</button>

    <script>
        function customFunction() {
            // Make an AJAX request to execute the PHP function
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "upload.php?action=customFunction", true); 
            xhr.onload = function() {
                if (xhr.status === 200) {
                    alert("Questions deleted"); // Display the response from the PHP function
                }
            };
            xhr.send();
        }
    </script>
</body>
</html>