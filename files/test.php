<?php
$full_array = file('test.txt');
$sep_arr = [];

foreach ($full_array as $item) {
    if ( $item == 'Клиентский центр в отделении Почты России' ) {
        $sep_arr = $item;
    }


}
// $string = implode(' ', $array);
// echo $string;
echo "<pre>";
print_r( $sep_arr );
echo "</pre>";

echo "<pre>";
print_r( $full_array );
echo "</pre>";
