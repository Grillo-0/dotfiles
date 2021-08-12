# Defined in - @ line 1
function gl --wraps='git log --graph --abbrev-commit --decorate --oneline' --description 'alias gl=git log --graph --abbrev-commit --decorate --oneline'
  git log --graph --abbrev-commit --decorate --oneline $argv;
end
