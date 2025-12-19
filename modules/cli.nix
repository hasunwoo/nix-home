{ pkgs, ... }:
{
    # packages
    home.packages = with pkgs; [
        iotop
        htop
        btop
        usbtop
        ripgrep
        dig
        fd
        bat
        neovim
        tmux
        podman
    ];

    # cli programs
    programs.tmux = {
        enable = true;
        clock24 = true;
        terminal = "screen-256color";
    };

    # git
    programs.git = {
        enable = true;
        userName = "hasunwoo";
        userEmail = "whs1999kr@naver.com";
    };
}

