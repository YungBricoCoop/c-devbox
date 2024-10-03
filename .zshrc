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

alias cmakec='cmake -DCMAKE_BUILD_TYPE=Debug ..' 
alias makec='make -j$(nproc)'  
alias clang-format-all='find . -name "*.cpp" -o -name "*.h" | xargs clang-format -i'  

rnb() {
  g++ main.cpp -o main && ./main
}

export CXX="g++" 
export CC="gcc"  

export CXXFLAGS="-fdiagnostics-color=always"
export CFLAGS="-fdiagnostics-color=always"

export PATH="$HOME/bin:$PATH"  

zstyle ':completion:*' rehash true