<div class="panel">
    <?php echo $this->beginContent("/report/toolbar", array("current" => 1)); ?>
    <?php echo $this->endContent(); ?>

    <div class="panel_body">
        <?php $form = $this->beginWidget('CActiveForm'); ?>
        <div>
            เดือน: <?php echo CHtml::dropdownList("month", $month - 1, KDate::getMonth()); ?>
            ปี: <?php echo CHtml::dropdownList("year", $year, KDate::getYear()); ?>
            <input type="submit" value="แสดงรายการ" />
        </div>
        <?php $this->endWidget(); ?>
        <br />

        <div class="header-success">รายงานข้อมูล</div>
        <?php
        $this->widget('zii.widgets.grid.CGridView', array(
            'id' => 'request-grid',
            'dataProvider' => $model->searchRepair($year, $month),
            'columns' => array(
                array(
                    'name' => 'request_created_date',
                    'value' => '$data->request_created_date',
                    'htmlOptions' => array(
                        'width' => '150px',
                        'align' => 'center'
                    )
                ),
                array(
                    'name' => 'device.device_code',
                    'type' => 'html',
                    'value' => array($model, "getButtonView"),
                    'htmlOptions' => array(
                        'width' => '100px',
                        'align' => 'center'
                    )
                ),
                array(
                    'name' => 'device_id',
                    'value' => '$data->device->device_brand_name." ".$data->device->device_name'
                ),
                array(
                    'name' => 'employee_id',
                    'value' => '$data->employee->employee_fname." ".$data->employee->employee_lname',
                    'htmlOptions' => array(
                        'width' => '200px'
                    )
                ),
                array(
                    'name' => 'request_status',
                    'value' => array($model, 'getRequestStatus'),
                    'htmlOptions' => array(
                        'width' => '100px',
                        'align' => 'center'
                    )
                )
            ),
        ));
        ?>    
        <br />

        <div class="header-danger">รายงานสรุป</div>
        <div class="row_report">
            <label>งานเข้า</label>
            <strong><?php echo number_format($model->countRequest($month, $year)); ?></strong>
        </div>
        <div class="row_report">
            <label>กำลังซ่อม</label>
            <strong><?php echo number_format($model->countRepair($month, $year)); ?></strong>
        </div>
        <div class="row_report">
            <label>ซ่อมเสร็จ</label>
            <strong><?php echo number_format($model->countRepairComplete($month, $year)); ?></strong>
        </div>
        <div class="row_report">
            <label>ปิดงานแล้ว</label>
            <strong><?php echo number_format($model->countComplete($month, $year)); ?></strong>
        </div>
        <div class="row_report">
            <label>คงค้าง</label>
            <strong>
                <span class="text-danger">
                    <?php echo number_format($model->countWait($month, $year)); ?>
                </span>
            </strong>
        </div>
    </div>
</div>