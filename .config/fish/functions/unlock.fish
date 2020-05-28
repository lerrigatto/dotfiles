# Defined in - @ line 2
function unlock
	set -e BW_SESSION
  set -gx BW_SESSION (bw unlock --raw)
end
