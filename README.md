# VimConfig
This project is using for configuring neovim and example configuration for debugging with vimspector in macos
- init.vim is using for nvim configuration
- settings folder is using for plugin's configuration

- In order to run the example with debugger, you need to create dSYM while compiling source
```  
Ex: g++ -g test.cpp -o test
```
- Some option in .vimspector.json you need to consider:
```
  stopAtEntry = true -> go to first line of main
  stopAtEntry = false -> need to set breakpoint otherwise Debugger will run throughout your program
  stopOnEntry = true -> go to after breakpoint
```
