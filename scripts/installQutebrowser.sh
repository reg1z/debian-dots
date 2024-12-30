cp ./bin/qutebrowser $HOME/.local/bin/qutebrowser # add to local $PATH
sudo chmod +x $HOME/.local/bin/qutebrowser
cp -r ../.config/qutebrowser/ $HOME/.config/ # install .config dotfiles

git clone https://github.com/qutebrowser/qutebrowser.git $HOME/repos/qutebrowser
cd $HOME/repos/qutebrowser

# Requirements (from docs) for using virtualenv-installed PyQt
# apt install --no-install-recommends git ca-certificates python3 python3-venv libgl1 libxkbcommon-x11-0 libegl1 libfontconfig1 libglib2.0-0 libdbus-1-3 libxcb-cursor0 libxcb-icccm4 libxcb-keysyms1 libxcb-shape0 libnss3 libxcomposite1 libxdamage1 libxrender1 libxrandr2 libxtst6 libxi6 libasound2

python3 scripts/mkvenv.py

echo 'Qutebrowser installer finished.'
