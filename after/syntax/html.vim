" Language:    CoffeeScript
" Maintainer:  Mick Koch <kchmck@gmail.com>
" URL:         http://github.com/kchmck/vim-coffee-script
" License:     WTFPL

" Syntax highlighting for text/coffeescript script tags
syn include @htmlCoffeeScript syntax/coffee.vim
syn region coffeeScript start=+<script [^>]*type *=[^>]*text/coffeescript[^>]*>+
\                       end=+</script>+me=s-1 keepend
\                       contains=@htmlCoffeeScript,htmlScriptTag,@htmlPreproc
syntax region htmlFold start="<\z(p\|h\d\|i\?frame\|table\|colgroup\|thead\|tfoot\|tbody\|t[dhr]\|pre\|[diou]l\|li\|span\|div\|head\|script\|style\|blockquote\|form\)\%(\_s*\_[^/]\?>\|\_s\_[^>]*\_[^>/]>\)" end="</\z1\_s*>" fold transparent keepend extend containedin=htmlHead,htmlH\d
