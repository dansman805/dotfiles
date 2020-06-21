function fish_greeting
    set cow_to_use (cowsay -l | tr -s " " "\012" | shuf -n 1)
    cowsay -f $cow_to_use (fortune)
end
