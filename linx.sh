#Include Or Init
clear
#function
go(){
    echo "[1]- IP :: [2]- YourMac :: [3]- YourIP"
    echo "[4]- WRITE HTML ::  [5]- Exit :: "
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
         4)
            printf "Name :"
            read n
            printf "Site :"
            read s
            printf "Path :"
            read p
            touch "$p$n".html
            curl $s > "$p$n".html
            clear
            ;;
         5)
            exit
            ::
     esac
}
# Okay 
while true
    do
    go
    done
