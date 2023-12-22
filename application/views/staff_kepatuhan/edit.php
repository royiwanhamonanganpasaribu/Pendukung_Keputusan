 <?php  $this->load->view('header'); ?>




        <div class="breadcrumbs">
            <div class="breadcrumbs-inner">
                <div class="row m-0">
                    <div class="col-sm-10">
                        <div class="card">
                            <div class="card-body">
                                <!-- Credit Card -->
                                <div id="pay-invoice">
                                    <div class="card-body">
                                         <div class="card-title">
                                            <h3 class="text-center">Edit Data</h3><br><br><br>
                                        </div>
                                       
                                        <div class="card-title">
                                            <h3 class="text-center">Edit Calon Debitur</h3>
                                        </div>
                                        <hr>
<form class="form-horizontal" method="POST" action="<?php echo base_url();?>index.php/staff_kepatuhan/update" onsubmit="return cekform()">
    <div class="form-group has-success">
         <label for="cc-name" class="control-label mb-1">NIK Calon Debitur : </label>
             <input id="nik" readonly name="nik" value="<?php echo $staff_kepatuhan['nik']; ?>" <?php echo form_error('nik'); ?> type="text" class="form-control cc-name valid" data-val="true" data-val-required="Please enter the name on card" autocomplete="cc-name" aria-required="true" aria-invalid="false" aria-describedby="cc-name"> 
                 <span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
      </div>
    <div class="form-group has-success">
         <label for="cc-name" class="control-label mb-1">Nama Calon Debitur : </label>
             <input id="nama" name="nama" value="<?php echo $staff_kepatuhan['nama']; ?>" <?php echo form_error('nama'); ?> type="text" class="form-control cc-name valid" data-val="true" data-val-required="Please enter the name on card" autocomplete="cc-name" aria-required="true" aria-invalid="false" aria-describedby="cc-name"> 
                 <span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
      </div>

											
<div class="form-group">
	<label for="checkbox" class="col-mb-1 control-label">KTP : </label>
		<input type="radio" name="ktp" <?php if($staff_kepatuhan['ktp'] == '24'){ echo 'checked';} ?> value="24">Sesuai   
            <input type="radio" name="ktp" <?php if($staff_kepatuhan['ktp'] == '1'){ echo 'checked';} ?> value="1">Tidak Sesuai   
    </td><?php echo form_error('ktp'); ?>   
</div>
<div class="form-group">
    <label for="checkbox" class="col-mb-1 control-label">KK : </label>
        <input type="radio" name="kk" <?php if($staff_kepatuhan['kk'] == '24'){ echo 'checked';} ?> value="24">Sesuai   
            <input type="radio" name="kk" <?php if($staff_kepatuhan['kk'] == '1'){ echo 'checked';} ?> value="1">Tidak Sesuai   
    </td><?php echo form_error('kk'); ?>   
</div>
<div class="form-group">
    <label for="checkbox" class="col-mb-1 control-label">Surat Nikah : </label>
        <input type="radio" name="surat_nikah" <?php if($staff_kepatuhan['surat_nikah'] == '20'){ echo 'checked';} ?> value="20">Sesuai   
            <input type="radio" name="surat_nikah" <?php if($staff_kepatuhan['surat_nikah'] == '1'){ echo 'checked';} ?> value="1">Tidak Sesuai   
    </td><?php echo form_error('surat_nikah'); ?>   
</div>
<div class="form-group">
    <label for="checkbox" class="col-mb-1 control-label">Slip Gaji /Rekening Koran : </label>
        <input type="radio" name="slip_gaji" <?php if($staff_kepatuhan['slip_gaji'] == '10'){ echo 'checked';} ?> value="10">Sesuai   
            <input type="radio" name="slip_gaji" <?php if($staff_kepatuhan['slip_gaji'] == '1'){ echo 'checked';} ?> value="1">Tidak Sesuai   
    </td><?php echo form_error('slip_gaji'); ?>   
</div>
<div class="form-group">
    <label for="checkbox" class="col-mb-1 control-label">Surat Jaminan : </label>
        <input type="radio" name="surat_jaminan" <?php if($staff_kepatuhan['surat_jaminan'] == '9'){ echo 'checked';} ?> value="9">Sesuai   
            <input type="radio" name="surat_jaminan" <?php if($staff_kepatuhan['surat_jaminan'] == '1'){ echo 'checked';} ?> value="1">Tidak Sesuai   
    </td><?php echo form_error('surat_jaminan'); ?>   
</div>
<div class="form-group">
    <label for="checkbox" class="col-mb-1 control-label">Rekening Listrik : </label>
        <input type="radio" name="rek_listrik" <?php if($staff_kepatuhan['rek_listrik'] == '8'){ echo 'checked';} ?> value="8">Sesuai   
            <input type="radio" name="rek_listrik" <?php if($staff_kepatuhan['rek_listrik'] == '1'){ echo 'checked';} ?> value="1">Tidak Sesuai   
    </td><?php echo form_error('rek_listrik'); ?>   
</div>
<div class="form-group">
    <label for="checkbox" class="col-mb-1 control-label">NPWP : </label>
        <input type="radio" name="npwp" <?php if($staff_kepatuhan['npwp'] == '8'){ echo 'checked';} ?> value="8">Sesuai   
            <input type="radio" name="npwp" <?php if($staff_kepatuhan['npwp'] == '1'){ echo 'checked';} ?> value="1">Tidak Sesuai   
    </td><?php echo form_error('npwp'); ?>   
</div>
<div>
     <button id="payment-button" type="submit" class="btn btn-lg btn-info btn-block">
        
            <span id="payment-button-amount">Ubah</span>
    </button>
       </div><br>
       
       										
                                        </form>
                                    </div>
                                </div>

                            </div>
                        </div> <!-- .card -->

                    </div><!--/.col-->

                    </div>


        </div>
    </div>
     <?php  $this->load->view('staff_kepatuhan/footer'); ?>