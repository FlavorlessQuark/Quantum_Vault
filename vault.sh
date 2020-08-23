if [ -z "$1" ]
then
		echo "Usage : init\n sdl\n math\n phy\n"
		exit 0
fi

while : ; do
	case "$1" in
		init)
			echo -e "\033[38;5;9;1m Initializing repository ...\033[0m"
			mkdir -p srcs incl
			touch srcs/main.c
			mv Quantum_Vault/Makefile .
			echo -e "\033[38;5;46;1m Initialized ...\033[0m"
			shift ;;
		sdl)
			echo -e "\033[38;5;9;1m Opening wormhole to SDL universe...\033[0m"
			mkdir -p lib
			git clone https://github.com/FlavorlessQuark/SDL_Tools tmp
			cp tmp/*.h incl/
			cp tmp/*.c srcs/
			cp tmp/*.a lib/
			rm -rf tmp
			echo -e "\033[38;5;46;1m Loaded SDL helper\033[0m"

			shift ;;
		math)
			echo -e "\033[38;5;9;1m Summoning a portal to the Math dimension...\033[0m"
			mkdir -p lib
			git clone https://github.com/FlavorlessQuark/Math_Tools tmp
			cp tmp/*.h ../incl
			cp tmp/*.c ../srcs
			cp tmp/*.a ../lib
			rm -rf tmp
			echo -e "\033[38;5;46;1m Loaded Math helper\033[0m"
		shift ;;
		phy)
			echo -e "\033[38;5;9;1m Looking into the fabric of the Universe...\033[0m"
			mkdir -p lib
			git clone https://github.com/FlavorlessQuark/Physics_Tools tmp
			cp tmp/*.h ../incl
			cp tmp/*.c ../srcs
			cp tmp/*.a ../lib
			rm -rf tmp
			echo -e "\033[38;5;46;1m Loaded Physics helper\033[0m"
			shift ;;

		done)
			echo -e "\033[38;5;46;1m Teleporting away...\033[0m"
			rm -rf Quantum_Vault
			rm vault.sh
			break ;;
		*)
			break ;;
	esac
done


