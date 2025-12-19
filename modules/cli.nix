{ pkgs, ... }:
{
    # packages
    home.packages = with pkgs; [
        # cli tools
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

        # c dev
        stdenv.cc
        gcc
        gdb
        cmake
        pkg-config
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

