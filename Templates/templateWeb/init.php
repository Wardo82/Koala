<?php

ini_set('display_errors', '1');
error_reporting(E_ALL);


// === Setting database location ===
define('DATABASE_NAME', 'example');
define('DATABASE_USER', 'root');
define('DATABASE_HOST', '127.0.0.1');
define('DATABASE_PASSWORD', 'root');
define('BASE_URL', 'http://127.0.0.1/');

// ==== Supported databases ====
// Mysqli Database
include __DIR__.'/model/MysqliDb.php';

?>
