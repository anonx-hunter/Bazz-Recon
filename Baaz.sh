#!/bin/bash

logo(){
echo -e '\e[38;5;208mAutomation Recon Script by Vineet Bhati (@AnonX_hunter)';
}

logo

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

small_recon(){
    echo '-----------------------------------------------------'
    echo "${red} Starting Small Scope Recon on : ${green} [$(echo $target)] ${reset}"
    echo '-----------------------------------------------------'
	
          bash ~/arsenal/small.sh $target

    echo '-----------------------------------------------------'
    echo "${red} Starting Small Scope Recon on : ${green} [$(echo $target)] ${reset}"
    echo '-----------------------------------------------------'

}

medium_recon(){
    echo '-----------------------------------------------------'
    echo "${red} Starting Medium Scope Recon on : ${green} [$(echo $target)] ${reset}"
    echo '-----------------------------------------------------'

          bash ~/arsenal/medium.sh $target

    echo '-----------------------------------------------------'
    echo "${red} Starting Medium Scope Recon on : ${green} [$(echo $target)] ${reset}"
    echo '-----------------------------------------------------'

}

large_recon(){
    echo '-----------------------------------------------------'
    echo "${red} Starting Large Scope Recon on : ${green} [$(echo $target)] ${reset}"
    echo '-----------------------------------------------------'

          bash ~/arsenal/large.sh $target

    echo '-----------------------------------------------------'
    echo "${red} Starting Large Scope Recon on : ${green} [$(echo $target)] ${reset}"
    echo '-----------------------------------------------------'

}

while getopts ":t:eSMLh" opt; do
	case ${opt} in
		t ) target=$OPTARG
		    ;;
		e ) exclude=$OPTARG
		    ;;
		S ) small_recon
		    ;;
		M ) medium_recon
		    ;;
		L ) large_recon
		    ;;
		\? | h ) echo "Usage  :";
			 echo "         -t	List of target";
			 echo "		-e	Exclude target.(eg: sub1.ex.com,sub2.ex.com)";
			 echo "         -S	Perform Small Recon";
			 echo "         -M	Perform Medium Recon";
			 echo "         -L	Perform Large Recon";
			 echo "         -h	Displays the usage details";
		         ;;
		: ) echo "Invalid Argument";
		     ;;
	esac
done
shift $((OPTIND -1))
