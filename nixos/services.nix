{ config, lib, pkgs, ... }:
{
    services.cron = {
        enable = true;
        systemCronJobs = [
            "0 * * * *      root   rdiff-backup /home/ /mnt/backup-drive/nixos-desktop/home/dansman805/ >> /tmp/cron.log"
            "0 * * * *      root   rdiff-backup /etc/ /mnt/backup-drive/nixos-desktop/etc/ >> /tmp/cron.log"
        ];
    };
}