{
  # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  # NE TOUCHEZ A RIEN
  # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  users.users.test = {
    isNormalUser = true;
    description = "test";
    extraGroups = [ "networkmanager" "wheel" "render" ];
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

}
