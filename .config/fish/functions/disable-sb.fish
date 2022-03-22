function disable-sb --wraps='sudo diskutil apfs lockVolume dev_sb' --description 'alias disable-sb sudo diskutil apfs lockVolume dev_sb'
  sudo diskutil apfs lockVolume dev_sb $argv; 
end
