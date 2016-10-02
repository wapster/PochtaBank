<?php

//$string = preg_replace( '/\d/', '', '456788 Курган' );
//echo $string;



$file = file( 'city.txt' );
$output = array();
foreach ( $file as $string ) {
    $str = preg_replace( '/\d/', '', $string );
    trim( $str );
    $output[] = $str;
}
file_put_contents( 'output.txt', $output );

echo "<pre>";
print_r( $output );
echo "</pre>";
