<div class="row">
  <div class="col-12">
    <div class="page-title-box d-sm-flex align-items-center justify-content-between">
      <h4 class="mb-sm-0">Pengaturan</h4>

      <div class="page-title-right">
        <ol class="breadcrumb m-0">
          <li class="breadcrumb-item active" id="waktu_sekarang"><?php echo jamTanggalIndonesia(date("Y-m-d H:i:s"), true); ?></li>
        </ol>
      </div>

    </div>
  </div>
  <div class="col">
    <div class="h-100">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Judul Website</h5>
              <form method="post">
                <div class="mb-2">
                  <label class="form-label">Judul</label>
                  <input type="text" name="judul_website" class="form-control" value="<?php echo $isi1_judul_website; ?>" autocomplete="off" required>
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_judul_website" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Logo Admin (Light)</h5>
              <form method="post" enctype="multipart/form-data">
                <div class="mb-2 text-center">
                  <img src="assets/images/<?php echo $isi1_logo_admin_light; ?>" class="img-fluid">
                </div>
                <div class="mb-2">
                  <label class="form-label">Gambar</label>
                  <input type="file" name="gambar_logo_admin_light" class="form-control">
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_logo_admin_light" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Logo Admin (dark)</h5>
              <form method="post" enctype="multipart/form-data">
                <div class="mb-2 text-center">
                  <img src="assets/images/<?php echo $isi1_logo_admin_dark; ?>" class="img-fluid">
                </div>
                <div class="mb-2">
                  <label class="form-label">Gambar</label>
                  <input type="file" name="gambar_logo_admin_dark" class="form-control">
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_logo_admin_dark" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Logo Admin (small)</h5>
              <form method="post" enctype="multipart/form-data">
                <div class="mb-2 text-center">
                  <img src="assets/images/<?php echo $isi1_logo_admin_sm; ?>" class="img-fluid">
                </div>
                <div class="mb-2">
                  <label class="form-label">Gambar</label>
                  <input type="file" name="gambar_logo_admin_sm" class="form-control">
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_logo_admin_sm" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Hub Kami (LiveChat)</h5>
              <form method="post" enctype="multipart/form-data">
                <div class="mb-2 text-center">
                  <img src="assets/images/<?php echo $isi1_livechat; ?>" class="img-fluid">
                </div>
                <div class="mb-2">
                  <label class="form-label">Gambar</label>
                  <input type="file" name="gambar_livechat" class="form-control">
                </div>
                <div class="mb-2">
                  <label class="form-label">Judul</label>
                  <input type="text" name="judul_livechat" class="form-control" value="<?php echo $isi2_livechat; ?>" autocomplete="off" required>
                </div>
                <div class="mb-2">
                  <label class="form-label">Link</label>
                  <input type="text" name="link_livechat" class="form-control" value="<?php echo $isi3_livechat; ?>" autocomplete="off" required>
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_livechat" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Hub Kami (WhatsApp)</h5>
              <form method="post" enctype="multipart/form-data">
                <div class="mb-2 text-center">
                  <img src="assets/images/<?php echo $isi1_whatsapp; ?>" class="img-fluid">
                </div>
                <div class="mb-2">
                  <label class="form-label">Gambar</label>
                  <input type="file" name="gambar_whatsapp" class="form-control">
                </div>
                <div class="mb-2">
                  <label class="form-label">Nomor</label>
                  <input type="text" name="nomor_whatsapp" class="form-control" value="<?php echo $isi2_whatsapp; ?>" autocomplete="off" required>
                </div>
                <div class="mb-2">
                  <label class="form-label">Text</label>
                  <input type="text" name="text_whatsapp" class="form-control" value="<?php echo $isi3_whatsapp; ?>" autocomplete="off" required>
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_whatsapp" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">TWITTER</h5>
              <form method="post">
                <div class="mb-2">
                  <label class="form-label">Nama</label>
                  <input type="text" name="nama_twitter" class="form-control" value="<?php echo $isi1_twitter; ?>" autocomplete="off" required>
                </div>
                <div class="mb-2">
                  <label class="form-label">Link</label>
                  <input type="text" name="link_twitter" class="form-control" value="<?php echo $isi2_twitter; ?>" autocomplete="off" required>
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_twitter" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Instagram</h5>
              <form method="post">
                <div class="mb-2">
                  <label class="form-label">Nama</label>
                  <input type="text" name="nama_instagram" class="form-control" value="<?php echo $isi1_instagram; ?>" autocomplete="off" required>
                </div>
                <div class="mb-2">
                  <label class="form-label">Link</label>
                  <input type="text" name="link_instagram" class="form-control" value="<?php echo $isi2_instagram; ?>" autocomplete="off" required>
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_instagram" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Facebook</h5>
              <form method="post">
                <div class="mb-2">
                  <label class="form-label">Nama</label>
                  <input type="text" name="nama_facebook" class="form-control" value="<?php echo $isi1_facebook; ?>" autocomplete="off" required>
                </div>
                <div class="mb-2">
                  <label class="form-label">Link</label>
                  <input type="text" name="link_facebook" class="form-control" value="<?php echo $isi2_facebook; ?>" autocomplete="off" required>
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_facebook" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">LINE</h5>
              <form method="post">
                <div class="mb-2">
                  <label class="form-label">Nama</label>
                  <input type="text" name="nama_line" class="form-control" value="<?php echo $isi1_line; ?>" autocomplete="off" required>
                </div>
                <div class="mb-2">
                  <label class="form-label">Link</label>
                  <input type="text" name="link_line" class="form-control" value="<?php echo $isi2_line; ?>" autocomplete="off" required>
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_line" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Iklan (LiveScore)</h5>
              <form method="post" enctype="multipart/form-data">
                <div class="mb-2 text-center">
                  <img src="assets/images/<?php echo $isi1_livescore; ?>" class="img-fluid">
                </div>
                <div class="mb-2">
                  <label class="form-label">Gambar</label>
                  <input type="file" name="gambar_livescore" class="form-control">
                </div>
                <div class="mb-2">
                  <label class="form-label">Link</label>
                  <input type="text" name="link_livescore" class="form-control" value="<?php echo $isi2_livescore; ?>" autocomplete="off" required>
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_livescore" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Iklan (RTP Slot)</h5>
              <form method="post" enctype="multipart/form-data">
                <div class="mb-2 text-center">
                  <img src="assets/images/<?php echo $isi1_rtp_slot; ?>" class="img-fluid">
                </div>
                <div class="mb-2">
                  <label class="form-label">Gambar</label>
                  <input type="file" name="gambar_rtp_slot" class="form-control">
                </div>
                <div class="mb-2">
                  <label class="form-label">Link</label>
                  <input type="text" name="link_rtp_slot" class="form-control" value="<?php echo $isi2_rtp_slot; ?>" autocomplete="off" required>
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_rtp_slot" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Teks Berjalan</h5>
              <form method="post">
                <div class="mb-2">
                  <label class="form-label">Detail</label>
                  <input type="text" name="detail_teks_berjalan" class="form-control" value="<?php echo $isi1_marquee_pengumuman; ?>" autocomplete="off" required>
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_teks_berjalan" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Logo</h5>
              <form method="post" enctype="multipart/form-data">
                <div class="mb-2 text-center">
                  <img src="assets/images/<?php echo $isi1_logo; ?>" class="img-fluid">
                </div>
                <div class="mb-2">
                  <label class="form-label">Gambar</label>
                  <input type="file" name="gambar_logo" class="form-control">
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_logo" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Favicon</h5>
              <form method="post" enctype="multipart/form-data">
                <div class="mb-2 text-center">
                  <img src="assets/images/<?php echo $isi1_favicon; ?>" class="img-fluid">
                </div>
                <div class="mb-2">
                  <label class="form-label">Gambar</label>
                  <input type="file" name="gambar_favicon" class="form-control">
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_favicon" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Pop-Up Pengumuman</h5>
              <form method="post" enctype="multipart/form-data">
                <div class="mb-2 text-center">
                  <img src="assets/images/<?php echo $isi1_popup_pengumuman; ?>" class="img-fluid">
                </div>
                <div class="mb-2">
                  <label class="form-label">Gambar</label>
                  <input type="file" name="gambar_popup_pengumuman" class="form-control">
                </div>
                <div class="mb-2">
                  <label class="form-label">Link Gambar</label>
                  <input type="text" name="link_gambar_popup_pengumuman" class="form-control" value="<?php echo $isi2_popup_pengumuman; ?>" autocomplete="off" required>
                </div>
                <div class="mb-2">
                  <label class="form-label">Detail</label>
                  <textarea class="summernote" name="detail_popup_pengumuman" rows="10" required><?php echo $isi3_popup_pengumuman; ?></textarea>
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_popup_pengumuman" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Pusat Bantuan</h5>
              <form method="post">
                <div class="mb-2">
                  <label class="form-label">Detail</label>
                  <textarea class="summernote" name="detail_pusat_bantuan" rows="10" required><?php echo $isi1_pusat_bantuan; ?></textarea>
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_pusat_bantuan" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Syarat & Ketentuan</h5>
              <form method="post">
                <div class="mb-2">
                  <label class="form-label">Detail</label>
                  <textarea class="summernote" name="detail_syarat_dan_ketentuan" rows="10" required><?php echo $isi1_syarat_dan_ketentuan; ?></textarea>
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_syarat_dan_ketentuan" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Responsible Gaming</h5>
              <form method="post">
                <div class="mb-2">
                  <label class="form-label">Detail</label>
                  <textarea class="summernote" name="detail_responsible_gaming" rows="10" required><?php echo $isi1_responsible_gaming; ?></textarea>
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_responsible_gaming" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Tentang</h5>
              <form method="post">
                <div class="mb-2">
                  <label class="form-label">Detail</label>
                  <textarea class="summernote" name="detail_tentang" rows="10" required><?php echo $isi1_tentang; ?></textarea>
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_tentang" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Footer</h5>
              <form method="post">
                <div class="mb-2">
                  <label class="form-label">Footer Pendek</label>
                  <input type="text" name="footer_pendek" class="form-control" value="<?php echo $isi2_footer; ?>" autocomplete="off" required>
                </div>
                <div class="mb-2">
                  <label class="form-label">Footer Panjang</label>
                  <textarea class="summernote" name="footer_panjang" rows="10" required><?php echo $isi1_footer; ?></textarea>
                </div>
                <div class="mb-2">
                  <button type="submit" name="ubah_footer" class="d-flex justify-content-center align-items-center btn btn-primary ms-auto">
                    <i class="ri-save-3-line me-1"></i>
                    Simpan
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>