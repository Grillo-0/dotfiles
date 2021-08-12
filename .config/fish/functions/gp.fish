# Defined in - @ line 1
function gp --wraps='git pull' --description 'alias gp=git pull'
  git pull $argv;
end
