<form action="" method="post">
    <p>
        <input type="submit" name="submit" value="Добавить">
    </p>
</form>

<?php
if ( !empty($_POST['submit']) ) {
    require 'connect.php';

    $stmt = $pdo->prepare("INSERT INTO `office` (gorod_id, office_feature_id, adress, comment, location, mode)
    VALUES (:gorod_id, :office_feature_id, :adress, :comment, :location, :mode)");


    $file = file_get_contents( 'atms.txt' );
    $array = explode("\n\n", $file);

    foreach ($array as $new_arr) {
        $new_arr = explode( "\n", $new_arr );

        $end = end($new_arr);
        if ($end == '') {
            array_pop($new_arr);
        }

        // $count = count($new_arr) ."<br>";
        // if ($count < 5) {
        //     $comment = '';
        //     array_splice($new_arr, 2, 0, $comment);
        // }
        //
        // list($office_feature, $adress, $comment, $location, $mode) = $new_arr;
        //
        // $gorod_id = $_POST['gorod'];
        // $atm = $_POST['atm'];
        // $office = $_POST['office'];


        if ($office_feature == '«Почтовый Экспресс» и кредиты на индивидуальных условиях в точках партнеров') {
            $office_feature_id = 1;
        } elseif ($office_feature == 'Клиентский центр в отделении Почты России (сотрудник Почта Банка)') {
            $office_feature_id = 2;
        } elseif ($office_feature == 'Клиентский центр') {
            $office_feature_id = 3;
        } elseif ($office_feature == 'Стойка продаж') {
            $office_feature_id = 4;
        } elseif ($office_feature == 'Клиентский центр в отделении Почты России (сотрудник Почты России)') {
            $office_feature_id = 5;
        } else $office_feature_id = 0;

        $stmt->bindParam( ':gorod_id', $gorod_id, PDO::PARAM_INT);
        $stmt->bindParam( ':office_feature_id', $office_feature_id, PDO::PARAM_INT);
        $stmt->bindParam( ':adress', $adress, PDO::PARAM_STR);
        $stmt->bindParam( ':comment', $comment, PDO::PARAM_STR);
        $stmt->bindParam( ':location', $location, PDO::PARAM_STR);
        $stmt->bindParam( ':mode', $mode, PDO::PARAM_STR);
        $stmt->execute();

        echo "<pre>"; print_r ($new_arr); echo "</pre>";
    }

}
