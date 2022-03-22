function disable-dev --wraps='sudo diskutil apfs lockVolume dev' --description 'alias disable-dev sudo diskutil apfs lockVolume dev'
  sudo diskutil apfs lockVolume dev $argv; 
end
