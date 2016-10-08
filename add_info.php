<?php require_once 'connect.php';
$stmt = $pdo->query("SELECT * FROM `goroda_draft`");

?>

<form action="" method="post">

Город:
<select name="gorod">
    <option name="null"> - - - - -  </option>
    <?php
        while ($row = $stmt->fetch()) {
            echo "<option value='" . $row['id']  . "'>" . $row['gorod'] . "</option>";
        }
    ?>
</select>

<p><b>Клиентские центры и стойки продаж</b></p>
<textarea name="office" rows="10" cols="100" style="background:; font-size: 14px;"></textarea>

<p><b>БАНКОМАТЫ</b></p>
<textarea name="atm" rows="10" cols="100" style="background: ; font-size: 14px;"></textarea>

<p><input type="submit" name="submit" value="Добавить"></p>

</form>

<?php

if ( !empty($_POST['submit']) ) {
    require_once 'connect.php';
    $gorod_id = $_POST['gorod'];
    $atm = $_POST['atm'];
    $office = $_POST['office'];

    // print_r($_POST);

    // пишем в файл
    $file = '1.txt';
    $current = file_get_contents( $file );
    $current .= $office;
    $current .= "\r\r";
    file_put_contents( $file, $current );

    // удаляем город
    // $sql = "DELETE FROM `goroda_draft` WHERE id = :id";
    // $stmt = $pdo->prepare($sql);
    // $stmt->bindParam(':id', $gorod_id, PDO::PARAM_INT);
    // $stmt->execute();

    // получаем название города по его id
    // $sql_mkdir = "SELECT `gorod` FROM `goroda_draft` WHERE id = :id";
    // $stmt = $pdo->prepare($sql_mkdir);
    // $stmt->bindParam(':id', $gorod_id, PDO::PARAM_INT);
    // $stmt->execute();
    // if ( $dir_name = $stmt->fetch() ) {
    //     $dir_name = $dir_name['gorod'];
    //     echo $dir_name;
    //     // mkdir($dir_name, 0777);
    // }



    // $stmt = $pdo->query("SELECT * FROM `office_feature`");
    // while ($row = $stmt->fetch()) {
    //     echo $row['office_feature'] ."<br>";
    // }]

    // $gorod = 'Москва';
    // $goroda = file('1.txt');
    // $stmt = $pdo->prepare("INSERT INTO `goroda` (gorod) VALUES (:gorod)");
    // foreach ($goroda as $gorod) {
    //     $stmt->bindParam( ':gorod', $gorod);
    //     $stmt->execute();
    // }


}



$pdo = NULL;

?>
