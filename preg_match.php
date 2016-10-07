<?php
ini_set('display_errors', 'Off');

$goroda = file('checked.txt', FILE_SKIP_EMPTY_LINES | FILE_IGNORE_NEW_LINES);
// $goroda = ['абакан 3474 477'];

foreach ($goroda as $gorod) {
    $full_arr = preg_split("/(\s)/", $gorod, PREG_SPLIT_DELIM_CAPTURE);
    $full_arr[1] = str_replace(" ", "", $full_arr[1]);
    // echo "<pre>";
    // print_r($full_arr);
    // echo "</pre>";
    echo $full_arr[0] . " " . @$full_arr[1] . "<br>";
}

// echo $full_arr[1];


// $cena = str_replace( ",", '.', $cena );
// $cena = preg_replace( "/[^x\d|*\.]/", "", $cena);
