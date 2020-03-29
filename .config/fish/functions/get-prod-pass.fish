# Defined in - @ line 2
function get-prod-pass
	set TOKEN (bw unlock --raw)
    bw get password 98ba99e4-74ce-4a33-98d0-aa8400eec15a --session $TOKEN | xclip -selection clipboard
    set -e TOKEN
end
