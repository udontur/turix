{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    # Core apps
    kitty
    inputs.zen-browser.packages."${system}".beta
    nautilus
    obsidian

    # Apps
    vscode
    inputs.leetcode.packages."${system}".default
    inputs.figma.packages."${system}".default
    gnome-calculator
    papers
    openshot-qt
    foliate
    hieroglyphic
    slack
    protonvpn-gui
    obs-studio
    vivaldi
    vesktop
    loupe
    opencode

    # Terminal apps
    fastfetch
    helix
    btop-rocm
    yazi
    gdu
    inputs.umpire.packages."${system}".default
    inputs.osc.packages."${system}".default
  ];
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  };

  # This thing is broken again!!!
  # virtualisation.vmware.host.enable = true;
}
