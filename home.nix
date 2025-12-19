{ config, pkgs, ... }:
{
    home.username = "hasunwoo";
    home.homeDirectory = "/home/hasunwoo";

    # DO NOT CHANGE AFTER FIRST APPLY
    home.stateVersion = "24.05";

    imports = [
        ./modules
    ];
}

