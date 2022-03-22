function disable-tf --wraps='sudo diskutil apfs lockVolume dev_tf' --description 'alias disable-tf sudo diskutil apfs lockVolume dev_tf'
  sudo diskutil apfs lockVolume dev_tf $argv; 
end
