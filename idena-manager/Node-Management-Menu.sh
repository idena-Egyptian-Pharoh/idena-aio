# /usr/bin/bash

	E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "\e")
   TPUT(){ $e "\e[${1};${2}H" ;}
  CLEAR(){ $e "\ec";}
  CIVIS(){ $e "\e[?25l";}
   MARK(){ $e "\e[7m";}
 UNMARK(){ $e "\e[27m";}
      R(){ CLEAR ;stty sane;CLEAR;};
   HEAD(){ for each in $(seq 1 18);do
           $E "   \xE2\x94\x82                                             \xE2\x94\x82"
           done
           MARK;TPUT 1 5
           $E "              Node Management Menu           " ;UNMARK;
           TPUT 3 5
           $E "            Choose (1-12)        " ;UNMARK;}
           i=0; CLEAR; CIVIS;NULL=/dev/null
   FOOT(){ MARK;TPUT 18 5
           $E " UP \xE2\x86\x91 \xE2\x86\x93 DOWN    ENTER - SELECT,NEXT          ";UNMARK;}
  ARROW(){ IFS= read -s -n1 key 2>/dev/null >&2
           if [[ $key = $ESC ]];then 
              read -s -n1 key 2>/dev/null >&2;
              if [[ $key = \[ ]]; then
                 read -s -n1 key 2>/dev/null >&2;
                 if [[ $key = A ]]; then echo up;fi
                 if [[ $key = B ]];then echo dn;fi
              fi
           fi
           if [[ "$key" == "$($e \\x0A)" ]];then echo enter;fi;}
     M0(){ TPUT  4 18; $e "1)Fix Node.";}
     M1(){ TPUT  5 18; $e "2)change node key.";}
     M2(){ TPUT  6 18; $e "3)change api.";}
     M3(){ TPUT  7 18; $e "4)add another node.";}
     M4(){ TPUT  8 18; $e "5)idena-manager status.";}
     M5(){ TPUT  9 18; $e "6)mining on.";}
     M6(){ TPUT  10 18; $e "7)mining off.";}
     M7(){ TPUT  11 18; $e "8)node disable.";}
	 M8(){ TPUT  12 18; $e "9)node enable.";}
	 M9(){ TPUT  13 18; $e "10)More Options.";}
     M10(){ TPUT  14 18; $e "11)Main Menu.";}
	 M11(){ TPUT  15 18; $e "12)Exit.";}
      LM=11
   MENU(){ for each in $(seq 0 $LM);do M${each};done;}
    POS(){ if [[ $cur == up ]];then ((i--));fi
           if [[ $cur == dn ]];then ((i++));fi
           if [[ $i -lt 0   ]];then i=$LM;fi
           if [[ $i -gt $LM ]];then i=0;fi;}
REFRESH(){ after=$((i+1)); before=$((i-1))
           if [[ $before -lt 0  ]];then before=$LM;fi
           if [[ $after -gt $LM ]];then after=0;fi
           if [[ $j -lt $i      ]];then UNMARK;M$before;else UNMARK;M$after;fi
           if [[ $after -eq 0 ]] || [ $before -eq $LM ];then
           UNMARK; M$before; M$after;fi;j=$i;UNMARK;M$before;M$after;}
   INIT(){ R;HEAD;FOOT;MENU;}
     SC(){ REFRESH;MARK;$S;$b;cur=`ARROW`;}
     ES(){ MARK;$e "ENTER = main menu ";$b;read;INIT;};INIT
  while [[ "$O" != " " ]]; do case $i in
        0) S=M0;SC;if [[ $cur == enter ]];then R;reset && bash /home/idena-aio/idena-manager/fix-node.sh ;fi;;
        1) S=M1;SC;if [[ $cur == enter ]];then R;reset && bash /home/idena-aio/idena-manager/changenodekey.sh ;fi;;
		2) S=M2;SC;if [[ $cur == enter ]];then R;reset && bash /home/idena-aio/idena-manager/changeapi.sh ;fi;;
		3) S=M3;SC;if [[ $cur == enter ]];then R;reset && bash /home/idena-aio/idena-manager/add-node.sh ;fi;;
		4) S=M4;SC;if [[ $cur == enter ]];then R;reset && idena-manager/idena-manager status ;fi;;
		5) S=M5;SC;if [[ $cur == enter ]];then R;reset && bash /home/idena-aio/idena-manager/Mining On ;fi;;
		6) S=M6;SC;if [[ $cur == enter ]];then R;reset && bash /home/idena-aio/idena-manager/Mining Off ;fi;;
		7) S=M7;SC;if [[ $cur == enter ]];then R;reset && bash /home/idena-aio/idena-manager/node-disable.sh ;fi;;
		8) S=M8;SC;if [[ $cur == enter ]];then R;reset && bash /home/idena-aio/idena-manager/node-enable.sh ;fi;;
		9) S=M9;SC;if [[ $cur == enter ]];then R;reset && bash /home/idena-aio/idena-manager/more-options.sh ;fi;;
		10) S=M10;SC;if [[ $cur == enter ]];then R;reset && bash /home/idena-aio/idena-menu.sh ;fi;;
        11) S=M11;SC;if [[ $cur == enter ]];then R;exit 0 && reset && exit 0 ;fi;;
        
 esac;POS;done
