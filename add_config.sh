#! /bin/sh

# FILE=~/.zshrc
FILE=~/.dotfiles/my_test_zshrc

if [[ -f $FILE ]]; then
  echo "$FILE is existed"
else
  echo "$FILE is not created"
  touch $FILE
fi

echo "# =====================" >> $FILE

# CONFIG_FILE=~/.dotfiles/add_to_test_zshrc.conf
CONFIG_FILE=./add_to_test_zshrc.conf
cat $CONFIG_FILE >> $FILE
