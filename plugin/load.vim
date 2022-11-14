" Prevent the plugin from being loaded more than once
if exists("g:loaded_nickutil_plugin")
	finish
endif

let g:loaded_nickutil_plugin = 1

" expose the plugin's functions (written in nick/autoload/nick-autoload)
command! -nargs=0 NickVersion call nickutil#VimNickUtilVersion()
command! -nargs=0 TLN call nickutil#TLN()

command! -nargs=0 LX call nickutil#LX()
