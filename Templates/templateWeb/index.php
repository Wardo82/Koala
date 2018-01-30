<?php

include __DIR__.'/init.php';

$action = $_GET['action'] ?? null;

switch ($action) {
    case 'llistar-categories':
        require __DIR__.'/controller/categories.php';
        break;
    default:
        require __DIR__.'/controller/default.php';
        break;
}
?>
