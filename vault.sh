if [ -z "$1" ]
then
		echo "Usage : init\n sdl\n math\n phy\n"
		exit 0
fi

while : ; do
	case "$1" in
		init)
			echo -e "\033[38;5;9;1m Initializing repository ...\033[0m"
			mkdir srcs incl
			touch srcs/main.c
			echo -e "\033[38;5;46;1m Initializing repository ...\033[0m"
			shift ;;
		sdl)
			echo -e "\033[38;5;9;1m Opening wormhole to SDL universe...\033[0m"
			mkdir -p lib
			git clone https://github.com/FlavorlessQuark/SDL_Tools tmp
			mv tmp/*.h ../incl
			mv tmp/*.a ../lib
			echo -e "\033[38;5;46;1m Loaded SDL helper\033[0m"

			shift ;;
		math)
			echo -e "\033[38;5;9;1m Summoning a portal to the Math dimension...\033[0m"
			mkdir -p lib
			git clone https://github.com/FlavorlessQuark/Math_Tools tmp
			mv tmp/*.h ../incl
			mv tmp/*.a ../lib
		shift ;;
		phy)
			echo -e "\033[38;5;9;1m Looking into the fabric of the Universe...\033[0m"
			mkdir -p lib
			git clone https://github.com/FlavorlessQuark/Physics_Tools tmp
			mv tmp/*.h ../incl
			mv tmp/*.a ../lib
			echo -e "\033[38;5;46;1m Loaded Physics helper\033[0m"
			shift ;;

		done)
			echo -e "\033[38;5;46;1m Teleporting away...\033[0m"
			rm -r ../Quantum_Vault
			break ;;
		*)
			break ;;
	esac
done


