{ lib, config, pkgs, ... }:

{
  config = {
    users.users."marius" = {
     isNormalUser = true;
     shell = pkgs.zsh;
   };
  };
}
