" display the version of the plugin
function! nickutil#NickUtilVersion()
	echo "vim-nick-util version 1.0"
endfunction

" cycle between displaying relative line numbers and regular line numbers
let g:nickutil_ln_num_cycle = 0
function! nickutil#TLN()
	if g:nickutil_ln_num_cycle == 0
		set number| " show line numbers
		set relativenumber| " show relative line numbers 
		let g:nickutil_ln_num_cycle = 1
	elseif g:vim_nick_util_ln_num_cycle == 1
		set number 
		set norelativenumber
		"set relativenumber!
		"set relativenumber&
		let g:nickutil_ln_num_cycle = 2
	else
		set norelativenumber
		set nonumber
		let g:nickutil_ln_num_cycle = 0
	endif
endfunction

" functions not to be loaded:
" buffer all files in curr dir
function! nickutil#Ball()
	return ":e ./*"
endfunction

" openLexplore and shrink netrw
function! nickutil#LX()
	Lexplore
	25winc <
endfunction

" word count
let g:nickutil_word_count=wordcount().words
function nickutil#WordCount()
    if has_key(wordcount(),'visual_words')
        let g:nickutil_word_count=wordcount().visual_words."/".wordcount().words " count selected words
    else
        let g:nickutil_word_count=wordcount().cursor_words."/".wordcount().words " or shows words 'so far'
    endif
    return g:nickutil_word_count
endfunction

