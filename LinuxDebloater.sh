#!/bin/sh

cat << EOF
sentry456123's Linux debloater script"
Debloating Linux operating system...
EOF
sleep 2 # Fake "thinking time" to make the user not think something is wrong as a study showed that users generally distrust applications that run too fast
cat << EOF
Done!
0 pre-installed software removed
0 telemetry functions disabled
0 unnecessary scheduled tasks disabled
EOF

while true; do
  echo "Would you like to download more RAM? (requires the user to be part of sudoers)"
  read choice
  case $choice in
  y | Y | j | J | ok | OK)
    echo "Working..."
    cd ~
    git clone https://github.com/foundObjects/zram-swap.git
    cd zram-swap && sudo ./install.sh
    echo "All tasks finished. Enjoy!"
    exit 0
    ;;
  n | N | q | Q | x | X | "exit" | "quit" )
    echo "All tasks finished. Enjoy!"
    exit 0
    ;;
  *)
    echo "Not a valid response.";
    ;;
  esac
done
