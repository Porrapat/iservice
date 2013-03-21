<div class="panel_header">รายงาน</div>
<div>
    <ul class="button-toolbar">
        <?php if (Yii::app()->session["employee_level"] == "admin"): ?>
        <li <?php if ($current == 1) echo "class='current'"; ?>>
            <a href="<?php echo $this->createUrl("Home/RequestForm"); ?>">
                <div><?php echo CHtml::image("images/edit48.png"); ?></div>
                <div>รายงานการซ่อม</div>
            </a>
        </li>
        <?php endif ?>
    </ul>
</div>