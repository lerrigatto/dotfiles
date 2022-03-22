function enable-a1 --wraps='sudo diskutil apfs unlockVolume dev_a1' --description 'alias enable-a1 sudo diskutil apfs unlockVolume dev_a1'
  sudo diskutil apfs unlockVolume dev_a1 $argv; 
end
