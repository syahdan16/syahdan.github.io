<div class="row">
  <div class="col-12">
    <div class="page-title-box d-sm-flex align-items-center justify-content-between">
      <h4 class="mb-sm-0">Anggota</h4>
      <div class="page-title-right">
        <ol class="breadcrumb m-0">
          <li class="breadcrumb-item">
            <a href="#tambah_data" class="d-flex justify-content-center align-items-center btn btn-sm btn-primary text-white" data-bs-toggle="modal">
              <i class="ri-add-fill fw-bold me-1"></i>
              Tambah Data
            </a>
          </li>
        </ol>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="h-100">
      <div class="row">
        <div class="col-12">
          <!-- card -->
          <div class="card">
            <div class="card-body">
              <table id="datatables" class="table table-hover table-striped nowrap align-middle" style="width:100%">
                <thead>
                  <tr>
                    <th scope="col">Nama Lengkap</th>
                    <th scope="col">Nama Pengguna</th>
                    <th scope="col">Kata Sandi</th>
                    <th scope="col">Email</th>
                    <th scope="col">Telepon</th>
                    <th scope="col">WhatsApp</th>
                    <th scope="col">Kode Referensi</th>
                    <th scope="col">Status Akun</th>
                    <th scope="col">Aksi</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                    $anggota = mysqli_query($koneksi, "SELECT * FROM akun WHERE level_akun = 'Anggota'");
                    while ($data_anggota = mysqli_fetch_array($anggota)) {
                      $id_anggota = $data_anggota['id_akun'];
                      $nama_lengkap_anggota = $data_anggota['nama_lengkap_akun'];
                      $nama_pengguna_anggota = $data_anggota['nama_pengguna_akun'];
                      $kata_sandi_anggota = $data_anggota['kata_sandi_akun'];
                      $email_anggota = $data_anggota['email_akun'];
                      $telepon_anggota = $data_anggota['telepon_akun'];
                      $whatsapp_anggota = $data_anggota['whatsapp_akun'];
                      $kode_referensi_anggota = $data_anggota['kode_referensi_akun'];
                      $status_anggota = $data_anggota['status_akun'];
                  ?>
                  <tr>
                    <td><?php echo $nama_lengkap_anggota; ?></td>
                    <td><?php echo $nama_pengguna_anggota; ?></td>
                    <td><?php echo $kata_sandi_anggota; ?></td>
                    <td><?php echo $email_anggota; ?></td>
                    <td><?php echo $telepon_anggota; ?></td>
                    <td><?php echo $whatsapp_anggota; ?></td>
                    <td><?php echo $kode_referensi_anggota; ?></td>
                    <td>
                      <?php
                        if ($status_anggota == "Aktif") {
                          echo '<span class="badge bg-primary">Aktif</span>';
                        } else {
                          echo '<span class="badge bg-danger">Tidak Aktif</span>';
                        }
                      ?>
                    </td>
                    <td>
                      <div class="dropdown d-inline-block dropstart">
                        <button class="btn btn-soft-primary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                          <i class="ri-settings-3-fill align-middle"></i>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end me-2">
                          <li>
                            <a href="#ubah_data_<?php echo $id_anggota; ?>" class="dropdown-item edit-item-btn" data-bs-toggle="modal">
                              <i class="ri-pencil-fill align-bottom me-2 text-muted"></i>
                              Ubah Data
                            </a>
                          </li>
                          <li>
                            <a href="#hapus_data_<?php echo $id_anggota; ?>" class="dropdown-item remove-item-btn" data-bs-toggle="modal">
                              <i class="ri-delete-bin-fill align-bottom me-2 text-muted"></i>
                              Hapus Data
                            </a>
                          </li>
                        </ul>
                      </div>
                    </td>
                  </tr>
                  <!-- Modal Ubah Data -->
                  <div id="ubah_data_<?php echo $id_anggota; ?>" class="modal flip" tabindex="-1" aria-hidden="true" style="display: none;">
                    <form method="post">
                      <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title">Ubah Data</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"> </button>
                          </div>
                          <div class="modal-body">
                            <input type="hidden" name="id_anggota" value="<?php echo $id_anggota; ?>">
                            <div class="mb-2">
                              <label class="form-label">Nama Lengkap</label>
                              <input type="text" name="nama_lengkap_anggota" class="form-control" value="<?php echo $nama_lengkap_anggota; ?>" autocomplete="off" required>
                            </div>
                            <div class="mb-2">
                              <label class="form-label">Nama Pengguna</label>
                              <input type="text" name="nama_pengguna_anggota" class="form-control" value="<?php echo $nama_pengguna_anggota; ?>" autocomplete="off" required>
                            </div>
                            <div class="mb-2">
                              <label class="form-label">Kata Sandi</label>
                              <input type="text" name="kata_sandi_anggota" class="form-control" value="<?php echo $kata_sandi_anggota; ?>" autocomplete="off" required>
                            </div>
                            <div class="mb-2">
                              <label class="form-label">Email</label>
                              <input type="email" name="email_anggota" class="form-control" value="<?php echo $email_anggota; ?>" autocomplete="off" required>
                            </div>
                            <div class="mb-2">
                              <label class="form-label">Telepon</label>
                              <input type="text" name="telepon_anggota" class="form-control" value="<?php echo $telepon_anggota; ?>" autocomplete="off" required>
                            </div>
                            <div class="mb-2">
                              <label class="form-label">WhatsApp</label>
                              <input type="text" name="whatsapp_anggota" class="form-control" value="<?php echo $whatsapp_anggota; ?>" autocomplete="off" required>
                            </div>
                            <div class="mb-2">
                              <label class="form-label">Kode Referensi</label>
                              <input type="text" name="kode_referensi_anggota" class="form-control" value="<?php echo $kode_referensi_anggota; ?>" autocomplete="off" required>
                            </div>
                            <div class="mb-2">
                              <label class="form-label">Status</label>
                              <select class="form-select mb-3" name="status_anggota" required>
                                <?php
                                  if ($status_anggota == "Aktif") {
                                    echo '
                                      <option value="Aktif">Aktif</option>
                                      <option value="Tidak Aktif">Tidak Aktif</option>
                                    ';
                                  } else {
                                    echo '
                                      <option value="Tidak Aktif">Tidak Aktif</option>
                                      <option value="Aktif">Aktif</option>
                                    ';
                                  }
                                ?>
                              </select>
                            </div>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="d-flex justify-content-center align-items-center btn btn-light" data-bs-dismiss="modal">
                              <i class="ri-close-fill fw-bold me-1"></i>
                              Batal
                            </button>
                            <button type="submit" name="ubah_data" class="d-flex justify-content-center align-items-center btn btn-primary">
                              <i class="ri-save-3-line me-1"></i>
                              Simpan
                            </button>
                          </div>
                        </div><!-- /.modal-content -->
                      </div><!-- /.modal-dialog -->
                    </form>
                  </div><!-- /.modal -->
                  <!-- Modal Hapus Data -->
                  <div id="hapus_data_<?php echo $id_anggota; ?>" class="modal flip" tabindex="-1" aria-hidden="true" style="display: none;">
                    <form method="post">
                      <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title">Hapus Data</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"> </button>
                          </div>
                          <div class="modal-body">
                            <input type="hidden" name="id_anggota" value="<?php echo $id_anggota; ?>">
                            <span class="text-muted">Yakin ingin menghapus data <span class="fw-bold text-danger"><?php echo $nama_lengkap_anggota; ?></span>?</span>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="d-flex justify-content-center align-items-center btn btn-light" data-bs-dismiss="modal">
                              <i class="ri-close-fill fw-bold me-1"></i>
                              Batal
                            </button>
                            <button type="submit" name="hapus_data" class="d-flex justify-content-center align-items-center btn btn-danger">
                              <i class="ri-check-fill fw-bold me-1"></i>
                              Yakin
                            </button>
                          </div>
                        </div><!-- /.modal-content -->
                      </div><!-- /.modal-dialog -->
                    </form>
                  </div><!-- /.modal -->
                  <?php
                    }
                  ?>
                </tbody>
              </table>
            </div><!-- end card body -->
          </div><!-- end card -->
        </div><!-- end col -->
      </div>
    </div>
  </div>
</div>

<!-- Modal Tambah Data -->
<div id="tambah_data" class="modal flip" tabindex="-1" aria-hidden="true" style="display: none;">
  <form method="post">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Tambah Data</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"> </button>
        </div>
        <div class="modal-body">
          <div class="mb-2">
            <label class="form-label">Nama Lengkap</label>
            <input type="text" name="nama_lengkap_anggota" class="form-control huruf-besar-awal-kata" placeholder="Nama Lengkap" autocomplete="off" required>
          </div>
          <div class="mb-2">
            <label class="form-label">Nama Pengguna</label>
            <input type="text" name="nama_pengguna_anggota" class="form-control" placeholder="Nama Pengguna" autocomplete="off" required>
          </div>
          <div class="mb-2">
            <label class="form-label">Kata Sandi</label>
            <input type="text" name="kata_sandi_anggota" class="form-control" placeholder="Kata Sandi" autocomplete="off" required>
          </div>
          <div class="mb-2">
            <label class="form-label">Email</label>
            <input type="email" name="email_anggota" class="form-control" placeholder="Email" autocomplete="off" required>
          </div>
          <div class="mb-2">
            <label class="form-label">Telepon</label>
            <input type="text" name="telepon_anggota" class="form-control hanya-angka" placeholder="Telepon" autocomplete="off" required>
          </div>
          <div class="mb-2">
            <label class="form-label">WhatsApp</label>
            <input type="text" name="whatsapp_anggota" class="form-control hanya-angka" placeholder="WhatsApp" autocomplete="off" required>
          </div>
          <div class="mb-2">
            <label class="form-label">Kode Referensi</label>
            <input type="text" name="kode_referensi_anggota" class="form-control" value="kLaahst" autocomplete="off" required>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="d-flex justify-content-center align-items-center btn btn-light" data-bs-dismiss="modal">
            <i class="ri-close-fill fw-bold me-1"></i>
            Batal
          </button>
          <button type="submit" name="tambah_data" class="d-flex justify-content-center align-items-center btn btn-primary">
            <i class="ri-save-3-line me-1"></i>
            Simpan
          </button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </form>
</div><!-- /.modal -->