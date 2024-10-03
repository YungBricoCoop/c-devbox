export ZSH="/root/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

DISABLE_AUTO_UPDATE="true"

precmd() {
  if [[ $? -eq 0 ]]; then
    STATUS_EMOJI="💀" 
  else
    STATUS_EMOJI="👺" 
  fi
}

PROMPT='%{$fg[magenta]%}DevC@Docker %{$fg[blue]%}(%~) %{$reset_color%}$STATUS_EMOJI  '

plugins=(
  git
  zsh-syntax-highlighting  
  zsh-autosuggestions      
  you-should-use
  command-not-found 
)

x() {
  clang++ main.cpp -o main && ./main
}

cx() {
	clang main.c -o main && ./main
}

cformat() {
  find . -name "*.cpp" -o -name "*.h" | xargs clang-format -i
}

ccheck() {
  cppcheck --enable=all .
}

clint() {
  cpplint *.cpp
}

export CXX="clang++"
export CC="clang"

export CXXFLAGS="-fdiagnostics-color=always"
export CFLAGS="-fdiagnostics-color=always"

export PATH="$HOME/bin:$PATH"  

zstyle ':completion:*' rehash true