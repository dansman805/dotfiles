function get_TOA_data
	curl -H "X-TOA-Key:$TOA_KEY" -H "Content-Type:application/json" -H "X-Application-Origin:dansman805-interactive-api-usage" "https://theorangealliance.org/api/$argv"
end
