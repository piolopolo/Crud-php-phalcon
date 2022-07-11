{{ form('org/daftar', 'method':'post','role': 'form') }}
<div class="container-fluid">
<h2 class="mb-4">P</h2>
<h2 style="align-items:center">Pendaftaran Mahasiswa</h2>
<div style="display:flex; flex-direction:column; align-items:center">
<div class="card p-3" style="width:40%">
 <label class="form-label" for="txt_namas">Nama</label>
 <input class="form-control" type="text" name="txt_namas">
    <label class="form-label" for="nims">NIM</label>
 <input class="form-control" type="text" name="txt_nims">
    <label class="form-label" for="prodis">Prodi</label>
     <input class="form-control mb-3" type="text" name="txt_prodis">
    <button class="btn btn-success" type="submit">Save</button>
</form>
</div>
</div>
</div>