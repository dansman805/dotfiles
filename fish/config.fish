# ~/.config/fish/config.fish: DO NOT EDIT -- this file has been generated automatically.
# if we haven't sourced the general config, do it
if not set -q __fish_general_config_sourced
  set fish_function_path /nix/store/0a54vaq79av95929p59w245p31a2i9i9-fish-foreign-env-git-20170324/share/fish-foreign-env/functions $fish_function_path
  fenv source /home/dansman805/.nix-profile/etc/profile.d/hm-session-vars.sh > /dev/null
  set -e fish_function_path[1]

  
  # and leave a note so we don't source this config section again from
  # this very shell (children will source the general config anew)
  set -g __fish_general_config_sourced 1
end
# if we haven't sourced the login config, do it
status --is-login; and not set -q __fish_login_config_sourced
and begin

  
  # and leave a note so we don't source this config section again from
  # this very shell (children will source the general config anew)
  set -g __fish_login_config_sourced 1
end
# if we haven't sourced the interactive config, do it
status --is-interactive; and not set -q __fish_interactive_config_sourced
and begin
  # Abbrs
  

  # Aliases
  

  
  
  # and leave a note so we don't source this config section again from
  # this very shell (children will source the general config anew,
  # allowing configuration changes in, e.g, aliases, to propagate)
  set -g __fish_interactive_config_sourced 1
end
