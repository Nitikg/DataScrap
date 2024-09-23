<?php
/*
Plugin Name: Shivi Custom Functions Plugin
Description: A plugin to execute custom functions via a permalink URL, including file upload and table deletion.
Version: 2.0
Author: Shivi
*/

function ShiviExecuteSQL($sqlFilePath) {
    global $wpdb;

    try {
		
		echo"<p>$sqlFilePath</p>";
		
		// Attempt to read and execute the SQL file
            $sql_queries = file_get_contents($sqlFilePath);
			
			$queries = explode(';', $sql_queries); 


$wpdb->query('START TRANSACTION');

try
{
foreach ($queries as $query) {
    $query = trim($query); // Remove any leading/trailing whitespace
    if (!empty($query)) {
        $wpdb->query($query); 
    }
}

$wpdb->query('COMMIT'); 
} catch (Exception $e) {
    $wpdb->query('ROLLBACK'); 
    // Handle the error
}



			// try {
			// if (!empty($sql_queries)) {
				// echo "Raw SQL is  :  " . $sql_queries;
				
                        // $result = $wpdb->query($sql_queries);
                        // echo "result is : " . $result;
                    // }
					
					// else
					// {
						// echo "This is the sql content" . $sql_queries ;
					// }
			// }
			
			// catch (Exception $e)
			// {
				// echo "exception happned";
				// echo "<p>Error executing SQL at query $executed_queries: " . $e->getMessage() . "</p>";
			// }
			
			
					
            // if ($sql_queries) {
                // // Split queries by semicolon, but handle multi-line statements
                // $queries = preg_split('/~/', $sql_queries);

                // $total_queries = count($queries);
                // $executed_queries = 0;

                // foreach ($queries as $query) {
					
                     // $query = trim($query);
					// // echo "$query";
                    // if (!empty($query)) {
                        // $result = $wpdb->query($query);
                        // if (!$result) {
                            // echo "<p>Error executing SQL at query $executed_queries: " . $conn->error . "</p>";
							// echo "<p>$query</p>";
                            // break; 
                        // } else {
                            // $executed_queries++;
                            // // // Provide progress feedback (optional)
                            // // $progress = round(($executed_queries / $total_queries) * 100);
                            // // echo "<p>Progress: $progress%</p>"; 
                            // //flush(); // Force output to be sent to the browser immediately
                        // }
                    // }
                // }

                // if ($executed_queries == $total_queries) {
                    // echo "<p>SQL file executed successfully.</p>";
					// flush();
                // }
				// $conn->close();
			// }

             // else {
                // echo "<p>Error reading SQL file.</p>";
            // }
        
		

	echo "<p>I am executed with function name ShiviExecuteSQL in it.</p>";
	
	
    } catch (Exception $e) {
        echo "<p>Error executing SQL: " . $e->getMessage() . "</p>";
    }
}

function ShiviDeleteTables() {
    global $wpdb;

    try {
        // Replace 'your_table_name' with the actual table name(s) you want to delete
		//stagging
        $wpdb->query("delete FROM wp_jrf23a6sz5_posts WHERE post_type='lp_question';"); 
		$wpdb->query("TRUNCATE table wp_jrf23a6sz5_learnpress_question_answers;");
		$wpdb->query("truncate table wp_jrf23a6sz5_learnpress_quiz_questions;");
		$wpdb->query("delete from wp_jrf23a6sz5_postmeta WHERE meta_key ='_lp_type';");
		$wpdb->query("delete from wp_jrf23a6sz5_postmeta WHERE meta_key ='_lp_mark' and meta_value = 1;");
		//local
		$wpdb->query("delete FROM wp_posts WHERE post_type='lp_question';"); 
		$wpdb->query("TRUNCATE table wp_learnpress_question_answers;");
		$wpdb->query("truncate table wp_learnpress_quiz_questions;");
		$wpdb->query("delete from table wp_postmeta WHERE meta_key ='_lp_type';");
		$wpdb->query("delete from table wp_postmeta WHERE meta_key ='_lp_mark' and meta_value = 1;");
		
        echo "<p>I am executed with function name ShiviDeleteTables in it.</p>";
    } catch (Exception $e) {
        echo "<p>Error deleting tables: " . $e->getMessage() . "</p>";
    }
}

function shivi_add_rewrite_rule() {
    add_rewrite_rule('^shivi-custom-functions/?$', 'index.php?shivi_custom_functions=1', 'top');
}
add_action('init', 'shivi_add_rewrite_rule');

function shivi_add_query_var($vars) {
    $vars[] = 'shivi_custom_functions';
    return $vars;
}
add_filter('query_vars', 'shivi_add_query_var');

function shivi_custom_functions_page() {
    if (get_query_var('shivi_custom_functions') == 1) {
        ?>
        <html>
        <head>
            <title>Shivi Custom Functions</title>
        </head>
        <body>
            <h2>Shivi Custom Functions</h2>

            <form method="post" enctype="multipart/form-data">
                <input type="file" name="shivi_upload_file" />
                <input type="submit" value="Upload File" />
            </form>

            <?php
            if ($_FILES) {
                $upload_dir = wp_upload_dir();
                $file_path = $upload_dir['path'] . '/' . basename($_FILES['shivi_upload_file']['name']);

                if (move_uploaded_file($_FILES['shivi_upload_file']['tmp_name'], $file_path)) {
                    // You might want to insert file information into the database here using ShiviExecuteSQL
					ShiviExecuteSQL($file_path);
                    echo "<p>File uploaded successfully. The file path is: " . esc_html($file_path) . "</p>";
       
                } else {
                    echo "<p>Error uploading file.</p>";
                }
            }
            ?>

            <form method="post">
                <input type="submit" name="shivi_delete_tables" value="Delete Tables" />
            </form>

            <?php
            if (isset($_POST['shivi_delete_tables'])) {
                ShiviDeleteTables();
            }
            ?>

        </body>
        </html>
        <?php
        exit;
    }
}
add_action('template_redirect', 'shivi_custom_functions_page');