function enable-dev --wraps='sudo diskutil apfs unlockVolume dev' --description 'alias enable sudo diskutil apfs unlockVolume dev'
  sudo diskutil apfs unlockVolume dev $argv; 
end
