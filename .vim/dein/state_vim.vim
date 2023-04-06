if g:dein#_cache_version !=# 420 || g:dein#_init_runtimepath !=# '/Users/feles/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/feles/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim90,/usr/share/vim/vimfiles/after,/Users/feles/.vim/after' | throw 'Cache loading error' | endif
let [s:plugins, s:ftplugin] = dein#min#_load_cache_raw(['/Users/feles/.vimrc', '/Users/feles/.dein.toml'])
if s:plugins->empty() | throw 'Cache loading error' | endif
let g:dein#_plugins = s:plugins
let g:dein#ftplugin = s:ftplugin
let g:dein#_base_path = '/Users/feles/.vim/dein'
let g:dein#_runtime_path = '/Users/feles/.vim/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/feles/.vim/dein/.cache/.vimrc'
let g:dein#_on_lua_plugins = {}
let &runtimepath = '/Users/feles/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/feles/.vim,/usr/share/vim/vimfiles,/Users/feles/.vim/dein/.cache/.vimrc/.dein,/usr/share/vim/vim90,/Users/feles/.vim/dein/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/Users/feles/.vim/after'
