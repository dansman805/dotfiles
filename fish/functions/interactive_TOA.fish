function interactive_TOA
	set TOA_KEY (cat /home/dansman805/theorangealliance.key)
	set temp_file (mktemp)
	trap "rm -f $temp_file" 0 2 3 15

	curl -H "X-TOA-Key:$TOA_KEY" -H "Content-Type:application/json" -H "X-Application-Origin:dansman805-interactive-api-usage" "https://theorangealliance.org/api/$argv" > $temp_file

	fzf --print-query --preview "cat $temp_file | jq {q}"
end