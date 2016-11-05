<?php session_start(); ?>

<form action="" method="post">

Город:
<select name="gorod">
    <option name="null" value="0"> - - - - -  </option>
    <?php
        require_once 'connect.php';
        $countGoroda = $pdo->query("SELECT DISTINCT count(*) FROM `goroda`")->fetchColumn();
        $countAddsOffice = $pdo->query("SELECT count(DISTINCT  `gorod_id`) FROM `office`")->fetchColumn();

        $stmt = $pdo->query("SELECT * FROM `goroda_draft`");

        $pdo = NULL;
        while ($row = $stmt->fetch()) {
            echo "<option value='" . $row['id']  . "'>" . $row['gorod'] . "</option>";
        }
    ?>
</select>

<p>
    добавлено городов: <?php echo $countAddsOffice; ?> из <?php echo $countGoroda; ?>
</p>
<!-- <textarea name="office" rows="10" cols="100" style="background:; font-size: 14px;"></textarea> -->

<!-- <p><b>БАНКОМАТЫ</b></p>
<textarea name="atm" rows="10" cols="100" style="background: ; font-size: 14px;"></textarea> -->

<p>
    <input type="submit" name="submit" value="Добавить">
    <!-- <input type="submit" name="goroda_draft" value="города"> -->
</p>

</form>

<?php
// Удаляем город из списка
if ( !empty($_POST['goroda_draft']) ) {
    require 'connect.php';
    $gorod_id = $_POST['gorod'];
    $stmt = $pdo->query("DELETE FROM `goroda_draft` WHERE `id` = $gorod_id");
    $stmt->execute();
    $pdo = NULL;
    echo '<script>window.location.href = "add_info.php";</script>';
}

if ( !empty($_POST['submit']) ) {
    require 'connect.php';

    $stmt = $pdo->prepare("INSERT INTO `office` (gorod_id, office_feature_id, adress, comment, location, mode)
    VALUES (:gorod_id, :office_feature_id, :adress, :comment, :location, :mode)");


    $file = file_get_contents( 'office.txt' );
    $array = explode("\n\n", $file);

    foreach ($array as $new_arr) {
        $new_arr = explode( "\n", $new_arr );

        $end = end($new_arr);
        if ($end == '') {
            array_pop($new_arr);
        }

        $count = count($new_arr) ."<br>";
        if ($count < 5) {
            $comment = '';
            array_splice($new_arr, 2, 0, $comment);
        }

        list($office_feature, $adress, $comment, $location, $mode) = $new_arr;

        $gorod_id = $_POST['gorod'];
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
