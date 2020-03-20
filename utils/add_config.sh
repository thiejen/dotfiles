#! /bin/sh

# OUTPUT_CONFIG=~/.zshrc
OUTPUT_CONFIG=./my_test_zshrc

if [[ -f $OUTPUT_CONFIG ]]; then
  echo "$OUTPUT_CONFIG is existed"
else
  echo "$OUTPUT_CONFIG is not created"
  touch $OUTPUT_CONFIG
fi

echo "# =====================" >> $OUTPUT_CONFIG

# CONFIG_FILE=~/.dotfiles/add_to_test_zshrc.conf
CONFIG_FILE=./add_to_test_zshrc.conf
cat $CONFIG_FILE >> $OUTPUT_CONFIG
