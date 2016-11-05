<?php
$file = file_get_contents( 'atms.txt' );
$array = explode("\n\n", $file);

require 'connect.php';

$stmt = $pdo->prepare("INSERT INTO `atms` (gorod_id, adress, whose_atm_id, mode, services)
VALUES (:gorod_id, :adress, :whose_atm_id, :mode, :service_id)");

foreach ($array as $new_arr) {
    $new_arr = explode( "\n", $new_arr );

    $end = end($new_arr);
    if ($end == '') {
        array_pop($new_arr);
    }

    $gorod_id = 232;
    list( $adress, $whose_atm, $mode, $service) = $new_arr;

    if ($whose_atm == 'Банкомат «Почта Банка»') {
        $whose_atm_id = 1;
    } elseif ($whose_atm == 'Банкомат ВТБ24') {
        $whose_atm_id = 2;
    } else $whose_atm_id = 0;

    // прием.выдача наличных
    if ($service == 'прием наличных') {
        $service_id = 1;
    } elseif ($service == 'выдача наличных') {
        $service_id = 2;
    } elseif ($service == 'прием/выдача наличных') {
        $service_id = 3;
    } else $service_id = 0;

    $stmt->bindParam( ':gorod_id', $gorod_id, PDO::PARAM_INT);
    $stmt->bindParam( ':adress', $adress, PDO::PARAM_STR);
    $stmt->bindParam( ':whose_atm_id', $whose_atm_id, PDO::PARAM_INT);
    $stmt->bindParam( ':mode', $mode, PDO::PARAM_STR);
    $stmt->bindParam( ':service_id', $service_id, PDO::PARAM_INT);
    $stmt->execute();

    echo "<pre>"; print_r ($new_arr); echo "</pre>";
}
