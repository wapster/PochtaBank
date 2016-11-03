<?php
$array = ['1', '2', '4', '5'];
array_splice($array, 2, 0, '3');

echo "<pre>";
print_r ($array);
echo "</pre>";
