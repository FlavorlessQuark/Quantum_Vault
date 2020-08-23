# Quantum_Vault
Because I'm tired of rewriting makefiles

## One repo to rule them all...

I have decided to take coding a little bit more seriously. And so I have realized that across most of my project there is a certain pattern to be found.
Same makefile, same functions being rewritten, same .h file structures...

Not anymore.
With my magic coding powers and the help of Bash-senpai and GNUMake-sensei I will finally triumph.

### Usage

mv Quantum_vault/vault.sh .

./vault init sdl math phy done

  - **init**: Initializes current directory with incl, srcs & lib dir. Adds Makefile in current dir and main.c in srcs
  
  - **sdl** : Adds SDL_helper functions to the directory previously initialized with **init**. Project will be ready to compile and displayed after
WIN_H WIN_W and WIN_POS are set in SDL_master.h

  - **math** : Adds math helper functions.
  
  - **phy** : Adds physics helper functions.

  - **done** : And then the vault closes...
