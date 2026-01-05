{ pkgs, ... }:
{
    boot = {
        loader.systemd-boot.enable = true;
        loader.efi.canTouchEfiVariables = true;
        kernelPackages = pkgs.linuxPackages_latest;
        kernelParams = [
            "zswap.enabled=1"
            "zswap.compressor=zstd"
            "zswap.max_pool_percent=20"
            "zswap.shrinker_enabled=1"
        ];
    };
}
