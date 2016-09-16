" colorscheme
syntax enable
colorscheme pane

" show highlighting groups for current word
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunction

" case-insensitive searching - case-sensitive if uppercase letters are used
set ignorecase
set smartcase
set hlsearch
