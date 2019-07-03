<?php foreach ($gurudit as $key => $gdit): ?>
  
<?php endforeach ?>



        <div class="form-group">
        Nama Guru
        <input type="text" name="hdd" hidden value="<?php echo $gdit->nip ?>">
          <input type="text" value="<?php echo $gdit->nama_guru ?>" class="form-control" name="nguru" id="nguru1">
          <hr>
        NIP
          <input type="number" value="<?php echo $gdit->nip ?>" class="form-control" name="nip" id="nip1">
          <div class="form-group">
          <hr>
        Alamat
          <input type="text" class="form-control" value="<?php echo $gdit->alamat ?>"  name="alamat" id="alamat1">
        <hr>
        Jabatan
        <span id="errorkat"></span>
        <select name="jabatan" id="select3" class="form-control"> 
          <option id="null" value="">Pilih Jabatan</option>
          <?php foreach ($m as $key => $v): ?>
            <option id="<?php echo $v->id_jabatan ?>" value="<?php echo $v->id_jabatan?>">
              <?php echo $v->jabatan ?>
            </option>
          <?php endforeach ?>
        </select>
        <div class="form-group">
        <hr>
        Mata Pelajaran Diampu
        <span id="errorkat"></span>
        <select name="mapel" id="select4" class="form-control"> 
          <option id="null" value="">Pilih Mata Pelajaran</option>
          <?php foreach ($k as $key => $v): ?>
            <option id="<?php echo $v->id_mapel ?>" value="<?php echo $v->id_mapel ?>">
              <?php echo $v->mapel ?>
            </option>
          <?php endforeach ?>
        </select>
        <hr>
        <label>Foto</label><br>
        <input type="file" name="file" >
        </div>