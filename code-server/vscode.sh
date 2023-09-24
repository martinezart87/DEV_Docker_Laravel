echo "-------- ZMIANA UPRAWNIEŃ DO KATALOGU /var/www ---------"
chown -R abc /var/www
echo "----------- WYKONANO chown -R abc /var/www -------------"

echo "-------------- PODMIENIAM settings.json ----------------"
rm /config/data/User/settings.json
cp /usr/local/bin/settings.json /config/data/User/settings.json
chown abc:abc /config/data/User/settings.json
chmod 644 /config/data/User/settings.json
# PO RESTARCIE DOCKERA settiings.json zostaje nadpisany jako pusty plik :(
echo "----------- WYKONANO PODMIANĘ settings.json ------------"

echo "---------------- INSTALACJA ROZSZERZEŃ -----------------"
/usr/local/bin/install-extension vscode-icons-team.vscode-icons
/usr/local/bin/install-extension amiralizadeh9480.laravel-extra-intellisense
/usr/local/bin/install-extension bmewburn.vscode-intelephense-client 
/usr/local/bin/install-extension codingyu.laravel-goto-view
/usr/local/bin/install-extension EditorConfig.EditorConfig
/usr/local/bin/install-extension MehediDracula.php-namespace-resolver
/usr/local/bin/install-extension mikestead.dotenv
/usr/local/bin/install-extension ms-azuretools.vscode-docker
/usr/local/bin/install-extension octref.vetur
/usr/local/bin/install-extension onecentlin.laravel-blade
/usr/local/bin/install-extension onecentlin.laravel5-snippets
/usr/local/bin/install-extension PKief.material-icon-theme
/usr/local/bin/install-extension shufo.vscode-blade-formatter
/usr/local/bin/install-extension xdebug.php-debug
/usr/local/bin/install-extension zobo.php-intellisense
echo "-------------- ROZSZERZENIA ZAINSTALOWANE ---------------"

# code-server --install-extension georgykurian.laravel-ide-helper     
# code-server --install-extension glitchbl.laravel-create-view        
# code-server --install-extension IHunte.laravel-blade-wrapper
# code-server --install-extension ms-vscode-remote.remote-containers  
# code-server --install-extension naoray.laravel-goto-components
# code-server --install-extension onecentlin.laravel-extension-pack
# code-server --install-extension pgl.laravel-jump-controller
# code-server --install-extension ryannaddy.laravel-artisan
# code-server --install-extension xdebug.php-pack
tail -f /dev/null