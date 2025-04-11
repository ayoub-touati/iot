{config, pkgs, ...}:
{

    virtualisation.docker.enable = true;

   #NOTE: VirtualBox- ->>
   virtualisation.virtualbox.host.enable = true;
   users.extraGroups.vboxusers.members = [ "atouatis" ];
   # NOTE: kvm is not compatible with Vbox at this kernel version
   boot.kernelParams = [ "kvm.enable_virt_at_load=0" ];

}
