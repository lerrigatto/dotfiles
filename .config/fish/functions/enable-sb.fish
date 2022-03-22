function enable-sb --wraps='sudo diskutil apfs unlockVolume dev_sb' --description 'alias enable-sb sudo diskutil apfs unlockVolume dev_sb'
  sudo diskutil apfs unlockVolume dev_sb $argv; 
end
