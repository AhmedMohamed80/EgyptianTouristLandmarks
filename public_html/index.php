<?php

use Illuminate\Foundation\Application;
use Illuminate\Http\Request;

define('LARAVEL_START', microtime(true));

// Determine if the application is in maintenance mode...
if ($_SERVER['REQUEST_METHOD'] === 'PUT') {
    parse_str(file_get_contents("php://input"), $_PUT);
    $_REQUEST = array_merge($_REQUEST, $_PUT);
}
if (file_exists($maintenance = __DIR__.'/../storage/framework/maintenance.php')) {
    require $maintenance;
}

// Register the Composer autoloader...
require __DIR__.'/../laravel_project/vendor/autoload.php';
$app = require_once __DIR__.'/../laravel_project/bootstrap/app.php';


$app->handleRequest(Request::capture());
