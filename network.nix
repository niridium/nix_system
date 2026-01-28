{
    networking = {
        hostName = "nixos";
        networkmanager.enable = true;
        networkmanager.wifi.powersave = true;
        networkmanager.dns = "none" ;
        nameservers = [
            "194.242.2.3"
        ];
    };

    hardware.bluetooth.enable = true;
}
