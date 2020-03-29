# Defined in - @ line 2
function get-dev-pass
	set TOKEN (bw unlock --raw)
    bw get password 966631a8-e583-4649-9ce5-aa8400ee3b01 --session $TOKEN | xclip -selection clipboard
    set -e TOKEN
end
