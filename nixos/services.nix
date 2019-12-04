{ config, lib, pkgs, ... }:
{
    services.cron = {
        enable = true;
        systemCronJobs = [
            "0 * * * *      root   rdiff-backup /home/ /mnt/backup-drive/nixos-desktop/home/dansman805/ >> /tmp/cron.log"
            "0 * * * *      root   rdiff-backup /etc/ /mnt/backup-drive/nixos-desktop/etc/ >> /tmp/cron.log"
        ];
    };

    services.printing = {
        enable = true;
        drivers = [ pkgs.gutenprint ];
    };

    services.taskserver = {
        enable = true;
        fqdn = "server";
        listenHost = "::";
        organisations.personal.users = [ "dansman805" ];
    };

    services.flatpak.enable = true;
}