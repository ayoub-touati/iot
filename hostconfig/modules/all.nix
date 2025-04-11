{ config, lib, pkgs, inputs, ... }:
{
    imports = [
        ./dns.nix
        ./virtualization.nix
        ./custom_k3d.nix
        ./requirements.nix
        ];
}
