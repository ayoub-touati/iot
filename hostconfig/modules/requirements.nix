{ config, pkgs, ... }:
{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  neovim
  plemoljp-nf # nerdfonts for neovim icons
  lua
  luajitPackages.luarocks_bootstrap #luarocks in3lbo lismak sa3tayn wana kan9lb 3liha b9
  ghostty
  ripgrep
  gcc

  kubectl
  kubernetes-helm
  vagrant
  ];

  services.k3d.enable = true;
}
