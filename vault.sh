if [ -z "$1" ]
then
		echo "Usage : init\n sdl\n math\n"
		exit 0
fi

while : ; do
	case "$1" in
		init)
			echo -e "\033[38;5;9;1m Initializing repository ...\033[0m"
			mkdir -p srcs includes libs
			touch srcs/main.c
			mv Quantum_Vault/Makefile .
			echo -e "\033[38;5;46;1m Initialized\033[0m"
			shift ;;
		sdl)
			echo -e "\033[38;5;9;1m Opening a wormhole to the SDL universe...\033[0m"
			mkdir -p includes/SDLX includes/SDL2
			git clone https://github.com/FlavorlessQuark/SDL_Tools tmp
			cp tmp/Release/includes/*.h includes/SDLX
			cp tmp/Dev/libs/*.dylib libs
			cp tmp/Dev/includes/SDL2/*.h includes/SDL2
			cp tmp/Release/libSDLX.a libs
			rm -rf tmp
			echo -e "\033[38;5;46;1m Loaded SDL helper\033[0m"

			shift ;;
		math)
			echo -e "\033[38;5;9;1m Summoning a portal to the Math dimension...\033[0m"
			mkdir -p includes/MT
			git clone https://github.com/FlavorlessQuark/Math_Tools tmp
			cp tmp/Release/includes/*.h includes/MT
			cp tmp/Release/libMT.a libs
			rm -rf tmp
			echo -e "\033[38;5;46;1m Loaded Math helper\033[0m"
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


