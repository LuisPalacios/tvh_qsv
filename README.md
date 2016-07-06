# Tvheadend HW Accelerated transcoding vía Intel QuickSync Video

This repository is a complement for HW Accelerated transcoding via Intel QuickSync Video to tvheadend.

Migrated kernel patches mentioned [here](https://tvheadend.org/issues/3080) to kernel 4.6.3.


## BACKUP FIRST

Be careful, this is "touching" your kernel, so I would backup it first :-)

Backup the i915 directory

    cp -R /usr/src/linux/drivers/gpu/drm/i915/ /usr/src/backup-i915

## Instalation

Login to your Gentoo box with kernel 4.6.3

    $ ssh -l root mybox.mydomain.com
    mybox ~ #
    mybox ~ # uname -a
    Linux mybox 4.6.3-gentoo #2 SMP ...
    mybox ~ # genlop -l | grep -i 4.6.3
        Sat Jul  1 23:32:51 2016 >>> sys-kernel/gentoo-sources-4.6.3

Clone this repo

    mybox ~ # git clone https://github.com/LuisPalacios/tvh_qsv.git
    mybox ~ # cd tvh_qsv/

Execute the `aplica_patches.sh` script

    marte tvh_qsv # sh ./aplica_patches.sh
