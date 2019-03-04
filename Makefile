backup:
	mkdir ~/dotfiles_backup
	(ls ~/.bash_profile 2>/dev/null && mv ~/.bash_profile ~/dotfiles_backup) || echo 'bash_profile not backupped'
	(ls ~/.bashrc 2>/dev/null && mv ~/.bashrc ~/dotfiles_backup) || echo 'bashrc not backupped'
	(ls ~/.config 2>/dev/null && mv ~/.config ~/dotfiles_backup) || echo 'config dir not backupped'
	(ls ~/.editorconfig 2>/dev/null && mv ~/.editorconfig ~/dotfiles_backup) || echo 'editorconfig not backupped'
	(ls ~/.emoji 2>/dev/null && mv ~/.emoji ~/dotfiles_backup) || echo 'emoji not backupped'
	(ls ~/.eslintrc 2>/dev/null && mv ~/.eslintrc ~/dotfiles_backup) || echo 'eslintrc not backupped'
	(ls ~/.generalrc 2>/dev/null && mv ~/.generalrc ~/dotfiles_backup) || echo 'generalrc not backupped'
	(ls ~/.mozilla 2>/dev/null && mv ~/.mozilla ~/dotfiles_backup) || echo '.mozilla not backupped'
	(ls ~/.oh-my-zsh 2>/dev/null && mv ~/.oh-my-zsh ~/dotfiles_backup) || echo 'oh-my-zsh not backupped'
	(ls ~/.profile 2>/dev/null && mv ~/.profile ~/dotfiles_backup) || echo 'profile not backupped'
	(ls ~/.scripts 2>/dev/null && mv ~/.scripts ~/dotfiles_backup) || echo 'scripts not backupped'
	(ls ~/.shortcuts 2>/dev/null && mv ~/.shortcuts ~/dotfiles_backup) || echo 'shortcuts not backupped'
	(ls ~/.tmux.conf 2>/dev/null && mv ~/.tmux.conf ~/dotfiles_backup) || echo 'tmux conf not backupped'
	(ls ~/.vim 2>/dev/null && mv ~/.vim ~/dotfiles_backup) || echo 'vim dir not backupped'
	(ls ~/.vimrc 2>/dev/null && mv ~/.vimrc ~/dotfiles_backup) || echo 'vimrc not backupped'
	(ls ~/.Xdefaults 2>/dev/null && mv ~/.Xdefaults ~/dotfiles_backup) || echo 'xdefaults not backupped'
	(ls ~/.xinitrc 2>/dev/null && mv ~/.xinitrc ~/dotfiles_backup) || echo 'xinitrc not backupped'
	(ls ~/.xprofile 2>/dev/null && mv ~/.xprofile ~/dotfiles_backup) || echo 'xprofile not backupped'
	(ls ~/.Xresources 2>/dev/null && mv ~/.Xresources ~/dotfiles_backup) || echo 'xresources not backupped'
	(ls ~/.zprofile 2>/dev/null && mv ~/.zprofile ~/dotfiles_backup) || echo 'zprofile not backupped'
	(ls ~/.zshrc 2>/dev/null && mv ~/.zshrc ~/dotfiles_backup) || echo 'zshrc not backupped'
	mv ~/dotfiles_backup ~/dotfiles_backup_$(date "+%d-%m-%Y-%T")

link:
	ln -sv $(pwd)/.bashrc $HOME
	ln -sv $(pwd)/.config $HOME
	ln -sv $(pwd)/.editorconfig $HOME
	ln -sv $(pwd)/.eslintrc $HOME
	ln -sv $(pwd)/.generalrc $HOME
	ln -sv $(pwd)/.mozilla $HOME
	ln -sv $(pwd)/.oh-my-zsh $HOME
	ln -sv $(pwd)/.profile $HOME
	ln -sv $(pwd)/.scripts $HOME
	ln -sv $(pwd)/.shortcuts $HOME
	ln -sv $(pwd)/.tmux.conf $HOME
	ln -sv $(pwd)/.vim $HOME
	ln -sv $(pwd)/.vimrc $HOME
	ln -sv $(pwd)/.Xdefaults $HOME
	ln -sv $(pwd)/.xinitrc $HOME
	ln -sv $(pwd)/.xprofile $HOME
	ln -sv $(pwd)/.Xresources $HOME
	ln -sv $(pwd)/.zprofile $HOME
	ln -sv $(pwd)/.zshrc $HOME
