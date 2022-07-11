<?= $this->tag->form(['org/update', 'role' => 'form']) ?>
 <input type="hidden" name="txt_id" value=<?php echo $id ?>>
 <label for="name">Nama</label>
 <input type="text" name="txt_namas" value="<?php echo $nama ?>">
      <br>
    <label for="email">NIM</label>
 <input type="text" name="txt_nims" value="<?php echo $nim ?>">
    <br>
    <label for="email">Prodi</label>
     <input type="text" name="txt_prodis" value="<?php echo $prodi ?>">
        <br>
    <button type="submit">Save</button>
</form>