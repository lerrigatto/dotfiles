function disable-a1 --wraps='sudo diskutil apfs lockVolume dev_a1' --description 'alias disable-a1 sudo diskutil apfs lockVolume dev_a1'
  sudo diskutil apfs lockVolume dev_a1 $argv; 
end
