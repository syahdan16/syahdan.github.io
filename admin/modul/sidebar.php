<div class="offcanvas offcanvas-end text-white bg-black w-75" data-bs-backdrop="static" tabindex="-1" id="menunya">
  <div class="offcanvas-header">
    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    <h5 class="offcanvas-title d-block mx-auto">
      <?php
        if (isset($_SESSION['id_akun'])) {
          echo 'Profil Saya';
        } else {
          echo 'Login';
        }
      ?>
    </h5>
    <?php
      if (isset($_SESSION['id_akun'])) {
        echo '<img src="admin/assets/images/svg/logout.svg" class="me-2" id="keluar" width="18" height="18" style="cursor: pointer;">';
      }
    ?>
  </div>
  <div class="offcanvas-body">
    <?php
      if (isset($_SESSION['id_akun'])) {
    ?>
    <div class="border border-secondary p-2" style="font-size: 16px;">
      <span class="me-1">IDR</span>
      <span class="text-utama"><?php echo number_format($total_saldo).'.00'; ?></span>
    </div>
    <div class="user-menu">
      <div class="user-menu-item">
        <a href="<?php echo $alamat_website.'deposit'; ?>">
          <img src="admin/assets/images/svg/deposit.svg" alt="Deposit">
          DEPOSIT
        </a>
      </div>
      <div class="user-menu-item border border-top-0 border-bottom-0">
        <a href="<?php echo $alamat_website.'penarikan'; ?>">
          <img src="admin/assets/images/svg/withdrawal.svg" alt="Deposit">
          PENARIKAN
        </a>
      </div>
      <div class="user-menu-item">
        <a href="<?php echo $alamat_website.'akun_saya'; ?>">
          <img src="admin/assets/images/svg/profile.svg" alt="Deposit">
          AKUN SAYA
        </a>
      </div>
    </div>
    <?php
      } else {
    ?>
    <form method="post">
      <label class="form-label fs-6">Nama Pengguna</label>
      <div class="input-group mb-3">
        <span class="input-group-text text-white bg-white bg-opacity-50 border-0 rounded-0">
          <i class="ri-user-line"></i>
        </span>
        <input type="text" name="nama_pengguna_akun" class="form-control text-white bg-white bg-opacity-50 border-0 rounded-0">
      </div>
      <label class="form-label fs-6">Kata Sandi</label>
      <div class="input-group mb-3">
        <span class="input-group-text text-white bg-white bg-opacity-50 border-0 rounded-0">
          <i class="ri-lock-line"></i>
        </span>
        <input type="password" name="kata_sandi_akun" class="form-control text-white bg-white bg-opacity-50 border-0 rounded-0" id="input-kata-sandi">
        <span class="input-group-text text-white bg-white bg-opacity-50 border-0 rounded-0" id="peralihan-kata-sandi" style="cursor: pointer;">
          <i id="kata-sandi" class="ri-eye-off-line"></i>
        </span>
      </div>
      <button type="submit" name="masuk" class="btn btn-utama rounded-0 fs-6 w-100">Masuk</button>
      <span class="d-block text-center fs-6">Lupa kata sandi? <i class="ri-share-forward-fill"></i></span>
      <span class="d-block fs-6 mt-5">Tidak terdaftar? <a href="<?php echo $alamat_website.'daftar'; ?>" class="fw-bold">Daftar</a></span>
    </form>
    <?php
      }
    ?>
  </div>
</div>