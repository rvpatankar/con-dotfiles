{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "rapod-tools";
      paths = [
        neovim
        vimPlugins.nvchad
        ripgrep
        jetbrains-mono
        fzf
        tmux
        zsh
        oh-my-posh
        zinit
        nodejs_18
      ];
    };
  };
}
