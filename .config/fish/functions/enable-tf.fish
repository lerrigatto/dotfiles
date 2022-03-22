function enable-tf --wraps='sudo diskutil apfs unlockVolume dev_tf' --description 'alias enable-tf sudo diskutil apfs unlockVolume dev_tf'
  sudo diskutil apfs unlockVolume dev_tf $argv; 
end
