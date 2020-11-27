{ ... }:
{
  programs.fish = {
    enable = true;

    functions = {
      fish_greeting = "cowsay (fortune)";
      fish_prompt = ''
        test $SSH_TTY
        and printf (set_color red)$USER(set_color brwhite)'@'(set_color yellow)(prompt_hostname)' '
        test "$USER" = 'root'
        and echo (set_color red)"#"

        # Main
        echo -n (set_color cyan)(prompt_pwd) (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
      '';
      upload_file = "curl http://0x0.st -F'file=@'$argv";

      get_TOA_data = ''curl -H "X-TOA-Key:"(cat /home/dansman805/theorangealliance.key) -H "Content-Type:application/json" -H "X-Application-Origin:dansman805-interactive-api-usage" "https://theorangealliance.org/api/$argv"'';
    };
  };
}
