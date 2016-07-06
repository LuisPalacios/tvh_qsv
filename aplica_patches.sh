
#!/bin/bash
#
if [ -f i915-kernel4.6.3-patches.tgz ]; then
  DIR=`pwd`
  tar xvfz i915-kernel4.6.3-patches.tgz

  cd /usr/src/linux
  patch -p 1 < ${DIR}/0500-VPG-drm-i915-add-register-0x12400-for-ring-1.patch
  patch -p 1 < ${DIR}/0501-VPG-drm-i915-add-registers-needed-by-mfx_transcoder_.patch
  patch -p 1 < ${DIR}/0502-VPG-drm-i915-Add-register-0x000124D0-in-command-0x12.patch
  patch -p 1 < ${DIR}/0503-VPG-drm-i915-add-register-MFC_QP_STATUS_COUNT-for-ri.patch
  patch -p 1 < ${DIR}/0504-VPG-drm-i915-Add-L3-TLB-cache-registers-to-whitelist.patch
  patch -p 1 < ${DIR}/0505-VPG-drm-i915-Add-OCL-mmio-register.patch
  patch -p 1 < ${DIR}/0506-VPG-drm-i915-Add-L3SQCREG4-register-to-whitelist-for.patch
  patch -p 1 < ${DIR}/0508-VPG-drm-i915-Allow-unprivileged-userptr-surfaces.patch
  patch -p 1 < ${DIR}/0513-VPG-drm-i915-Add-debugfs-entry-for-ring-buffer-monit.patch
  patch -p 1 < ${DIR}/0518-drm-i915-update-the-ring-buffer-monitoring.patch
  patch -p 1 < ${DIR}/0522-VPG-drm-i915-Enable-semaphores-on-BDW.patch
  patch -p 1 < ${DIR}/0523-VPG-drm-i915-flush-scheduled-work-when-userptr-retur.patch
  patch -p 1 < ${DIR}/0524-VPG-drm-i915-add-MFD_MB_COUNT-for-error-status-repor.patch
fi
