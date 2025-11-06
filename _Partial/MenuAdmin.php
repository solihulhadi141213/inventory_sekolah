<aside id="sidebar" class="sidebar menu_background">
    <ul class="sidebar-nav" id="sidebar-nav">
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu==""){echo "";}else{echo "collapsed";} ?>" href="index.php">
                <i class="bi bi-grid"></i> <span>Dashboard</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu=="SettingGeneral"){echo "";}else{echo "collapsed";} ?>" href="index.php?Page=SettingGeneral">
                <i class="bi bi-gear"></i> <span>Pengaturan</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu=="Akses"){echo "";}else{echo "collapsed";} ?>" href="index.php?Page=Akses">
                <i class="bi bi-key"></i> <span>Akses</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu=="Kelas"){echo "";}else{echo "collapsed";} ?>" href="index.php?Page=Kelas">
                <i class="bi bi-building"></i> <span>Kelas</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu=="Siswa"){echo "";}else{echo "collapsed";} ?>" href="index.php?Page=Siswa">
                <i class="bi bi-people"></i> <span>Siswa</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu=="Permintaan"){echo "";}else{echo "collapsed";} ?>" href="index.php?Page=Permintaan">
                <i class="bi bi-calendar-week"></i> <span>Permintaan</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu=="Laporan"){echo "";}else{echo "collapsed";} ?>" href="index.php?Page=Laporan">
                <i class="bi bi-download"></i> <span>Laporan</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu!=="Bantuan"){echo "collapsed";} ?>" href="index.php?Page=Bantuan">
                <i class="bi bi-question"></i>
                <span>Bantuan</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" href="javascript:void(0);" data-bs-toggle="modal" data-bs-target="#ModalLogout">
                <i class="bi bi-box-arrow-in-left"></i>
                <span>Keluar</span>
            </a>
        </li>
    </ul>
</aside> 