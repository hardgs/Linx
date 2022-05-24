#Header
PS1="\e[40:1:33m[\u@\h \W]\$ "
# Read Jobs
echo "Hello To Cheking-linx "
echo "Thank You For chossing we "
# Time 5
echo "Loading... [7]"
sleep 3
clear
# Time 4
echo "Loading... [4]"
sleep 1
clear
#Time 3
echo "Loading... [3]"
sleep 1
clear
#Time 2
echo "Loading... [2]"
sleep 1
clear
#Time 1
echo "Loading... [1]"
sleep 1
clear
# Go To job
echo "[1]- IP :: [2]- YourMac :: [3]- YourIP"
#  Write On  screen
printf "[] : "
read inc
# Going 
case $inc in
    1)
        printf "Site Or IP: "
        read si
        echo "IP4: "$(ping $si -c 1 -4 | grep "64 bytes" | cut -d " " -f 5 | tr -d "(" | tr -d ")" | tr -d ":")
        echo "IP6: "$(ping $si -c 1 -6 | grep "64 bytes" | cut -d " " -f 5 | tr -d "(" | tr -d ")" | tr -d ":")
        ;;
     2)
        echo "Mac :"$(sudo ifconfig | grep "HWaddr" | cut -d " " -f 4)
        ;;
     3)
        echo "IP : "$(sudo hostname -I | cut -d " " -f 1)
        ;;
 esac
