<?php

class ReportController extends Controller {

    function actionRepair() {
        $model = new Request();
        $month = date("m") - 1;
        $year = date("Y");

        if (!empty($_POST["year"])) {
            $year = $_POST["year"];
        }
        if (!empty($_POST["month"])) {
            $month = $_POST["month"];
        }
        
        $this->render("Repair", array(
            "model" => $model,
            "month" => $month + 1,
            "year" => $year
        ));
    }

}

?>
