#auther Group Hard Games 
# Made Iran ( Group Hard Games"
# We follow in the Github 
# Link www.github.com/hardgs

#Color list
# Text
Black="30"
Red="31"
Green="32"
Yellow="33"
Blue="34"
Purple="35"
Cyan="36"
White="37"
# BackGrand
BBlack="40"
BRed="41"
BGreen="42"
BYellow="43"
BBlue="44"
BPurple="45"
BCyan="46"
BWhite="47" 
# Function  Write On Screen With Color
DText(){
        printf  "\033[${1};${2};${3}m ${4} \033[0m" 
}
SetText(){
	    printf "\033[${1};${2};${3}m"
}

# Go To  Program
#Include Or Init
Dti(){
SetText 0 1 $Red
echo ""
echo ""
echo          "                                  :      :   "
echo          ":                                  :    :    "
echo          ":                                   :  :     "
echo          ":          :::                        :      "
echo          ":           :       :------          : :     "
echo          ":           :       :      :        :   :    "
echo          ":           :       :      :       :     :   "
echo          ":           :       :      :      :       :  "
echo          "---------   -       -      -     -         - "
SetText 0 1 $Yellow
}
SetText 0 1 $Yellow
clear
Dti
#function
go(){
    printf "\n"
    echo "[1]- Your Info || [2]- Site Info || [3]- Exit"
    #  Write On  screen
    DText 0 1 $Red "[]- Chose One of top List : "
    SetText 0 1 $Yellow
    read En
    # Going 
    case $En in
        2)
            printf "Site Or IP: "
            read si
            printf "Name :"
            read n
            printf "Path :"
            read p
            touch "$p$n".html
            curl $si > "$p$n".html
            clear
            Dti
            echo "IP4: "$(ping $si -c 1 -4 | grep "64 bytes" | cut -d " " -f 5 | tr -d "(" | tr -d ")" | tr -d ":" || echo "No Site Or IP" || exit)
            echo "IP6: "$(ping $si -c 1 -6 | grep "64 bytes" | cut -d " " -f 5 | tr -d "(" | tr -d ")" | tr -d ":" || echo "No Site Or IP" || exit)
            echo "Default Document In the Addres: $p$n.html"
            ;;
         1)
            echo "Mac :"$(sudo ifconfig | grep "HWaddr" | cut -d " " -f 4 || echo "Error Get Mac Address" || exit)
            echo "IP : "$(sudo hostname -I | cut -d " " -f 1 || echo "Error Get Your IP" || exit)
            ;;
         3)
            exit
            ::
     esac
}
# Okay 
while true
    do
    go
    done
