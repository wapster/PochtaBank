<form action="" method="post">
<p><input type="submit" name="submit" value="Добавить"></p>
</form>

<?php

$file = file_get_contents( '1.txt' );
$array = explode("\n\n", $file);

foreach ($array as $new_arr) {
    $new_arr = explode( "\n", $new_arr );

    $end = end($new_arr);
    if ($end == '') {
        array_pop($new_arr);
    }

    $count = count($new_arr) ."<br>";
    if ($count < 5) {
        $comment = 'Комментарий';
        array_splice($new_arr, 2, 0, $comment);

    }

        list($office_feature, $adress, $comment, $location, $mode) = $new_arr;
    
        $gorod_id = 20;

        if ($office_feature == '«Почтовый Экспресс» и кредиты на индивидуальных условиях в точках партнеров') {
            $office_feature_id = 1;
        } elseif ($office_feature == 'Клиентский центр в отделении Почты России (сотрудник Почта Банка)') {
            $office_feature_id = 2;
        } elseif ($office_feature == 'Клиентский центр') {
            $office_feature_id = 3;
        } elseif ($office_feature =='Стойки продаж') {
            $office_feature_id = 4;
        } else $office_feature_id = 0;


        require 'connect.php';
        $stmt = $pdo->prepare("INSERT INTO `office` (gorod_id, office_feature_id, adress, comment, location, mode)
        VALUES (:gorod_id, :office_feature_id, :adress, :comment, :location, :mode)");

        $stmt->bindParam( ':gorod_id', $gorod_id, PDO::PARAM_INT);
        $stmt->bindParam( ':office_feature_id', $office_feature_id, PDO::PARAM_INT);
        $stmt->bindParam( ':adress', $adress, PDO::PARAM_STR);
        $stmt->bindParam( ':comment', $comment, PDO::PARAM_STR);
        $stmt->bindParam( ':location', $location, PDO::PARAM_STR);
        $stmt->bindParam( ':mode', $mode, PDO::PARAM_STR);
        $stmt->execute();

        $pdo = NULL;

        echo "<pre>"; print_r ($new_arr); echo "</pre>";
}





// разбивка файла: поиск и замена по регулярному выражению:
// 1. \n\n -> *\n
// 2. \n -> ;\n

if ( !empty($_POST['submit']) ) {
    require_once 'connect.php';

    list($office_feature, $adress, $comment, $location, $mode) = $new_arr;

    $gorod_id = 20;

    if ($office_feature == '«Почтовый Экспресс» и кредиты на индивидуальных условиях в точках партнеров') {
        $office_feature_id = 1;
    } elseif ($office_feature == 'Клиентский центр в отделении Почты России (сотрудник Почта Банка)') {
        $office_feature_id = 2;
    } elseif ($office_feature == 'Клиентский центр') {
        $office_feature_id = 3;
    } elseif ($office_feature =='Стойки продаж') {
        $office_feature_id = 4;
    } else $office_feature_id = 0;



    $stmt = $pdo->prepare("INSERT INTO `office` (gorod_id, office_feature_id, adress, comment, location, mode)
    VALUES (:gorod_id, :office_feature_id, :adress, :comment, :location, :mode)");

    $stmt->bindParam( ':gorod_id', $gorod_id, PDO::PARAM_INT);
    $stmt->bindParam( ':office_feature_id', $office_feature_id, PDO::PARAM_INT);
    $stmt->bindParam( ':adress', $adress, PDO::PARAM_STR);
    $stmt->bindParam( ':comment', $comment, PDO::PARAM_STR);
    $stmt->bindParam( ':location', $location, PDO::PARAM_STR);
    $stmt->bindParam( ':mode', $mode, PDO::PARAM_STR);
    $stmt->execute();

    $pdo = NULL;
}
