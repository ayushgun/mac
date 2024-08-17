eval "$(starship init zsh)"
alias csim="java -jar --module-path '/Users/ayushgundawar/Documents/Coursework/CS2200/javafx/lib' --add-modules javafx.base,javafx.controls,javafx.fxml '/Users/ayushgundawar/Documents/Coursework/CS2200/CircuitSim.jar'"
alias docker="/Applications/Docker.app/Contents/Resources/bin/docker"
alias "g++"="g++-14"
alias gcc="gcc-14"
alias ll="ls -l"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ayushgundawar/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ayushgundawar/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ayushgundawar/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ayushgundawar/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
