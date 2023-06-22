<div class="offcanvas offcanvas-start text-white bg-black border-1 border-end w-auto" tabindex="-1" id="menunya2">
  <div class="offcanvas-body p-0">
    <a href="<?php echo $alamat_website.'beranda'; ?>" class="d-flex justify-content-center align-items-center border-1 border-bottom" style="width: 100px; height: 100px;">
      <div class="d-flex flex-column align-items-center">
        <img src="admin/assets/images/svg/home.svg" alt="" width="25" height="25" class="d-block mx-auto">
        <span class="text-white">BERANDA</span>
      </div>
    </a>
    <?php
      if (isset($_SESSION['id_akun'])) {
        if ($total_saldo > 0) {
          echo '<a href="'.$alamat_website.'games/kategori/slots" class="d-flex justify-content-center align-items-center border-1 border-bottom" style="width: 100px; height: 100px;">';
        } else {
          echo '<a href="'.$alamat_website.'deposit" class="d-flex justify-content-center align-items-center border-1 border-bottom" style="width: 100px; height: 100px;">';
        }
      } else {
        echo '<a href="#menunya" class="d-flex justify-content-center align-items-center border-1 border-bottom" data-bs-toggle="offcanvas" style="width: 100px; height: 100px;">';
      }
    ?>
      <div class="d-flex flex-column align-items-center">
        <img src="admin/assets/images/svg/slots.svg" alt="" width="25" height="25" class="d-block mx-auto">
        <span class="text-white">PERMAINAN</span>
      </div>
    </a>
    <a href="<?php echo $alamat_website.'promosi'; ?>" class="d-flex justify-content-center align-items-center border-1 border-bottom" style="width: 100px; height: 100px;">
      <div class="d-flex flex-column align-items-center">
        <img src="admin/assets/images/svg/promotion.svg" alt="" width="25" height="25" class="d-block mx-auto">
        <span class="text-white">PROMOSI</span>
      </div>
    </a>
    <a href="<?php echo $alamat_website.'hub_kami'; ?>" class="d-flex justify-content-center align-items-center border-1 border-bottom" style="width: 100px; height: 100px;">
      <div class="d-flex flex-column align-items-center">
        <img src="admin/assets/images/svg/live-chat.svg" alt="" width="25" height="25" class="d-block mx-auto">
        <span class="text-white">HUBUNGI KAMI</span>
      </div>
    </a>
    <a href="javascript:void(0);" class="d-flex justify-content-center align-items-center border-1 border-bottom" data-bs-dismiss="offcanvas" style="width: 100px; height: 100px;">
      <div class="d-flex flex-column align-items-center">
        <i class="ri-arrow-go-back-fill" style="font-size: 25px;"></i>
      </div>
    </a>
  </div>
</div>