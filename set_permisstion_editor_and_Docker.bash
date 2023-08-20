#/bin/bash

export WORK_DIR='mywebsite';

if [ $1 == 'on' ]
then
sudo chown "$USER":"$USER" "$WORK_DIR"/wp -R
sudo chmod g+rwx "$WORK_DIR"/wp -R
sudo chown "$USER":"$USER" "$WORK_DIR"/wp/wp-content/themes/child
sudo chmod g+rwx "$WORK_DIR"/wp/wp-content/themes/child -R
echo 'Turn on permisstion'
elif [ $1 == 'off' ]
then
sudo chown www-data:www-data "$WORK_DIR"/wp -R
sudo chmod g+rwx "$WORK_DIR"/wp -R
echo 'Turn off permisstion'
else
echo Please input args.
fi