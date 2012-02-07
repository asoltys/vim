" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

if exists("loaded_matchit")
    let b:match_ignorecase = 1
    let b:match_words = '<:>,' .
    \ '<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>,' .
    \ '<cfif\>.\{-}>\|<cfif\>.\{-}$:'
            \ . '<cfelseif\>.\{-}>\|<cfelseif\>.\{-}$:'
            \ . '<cfelse\>.\{-}>\|<cfelse\>.\{-}$:'
            \ . '<\/cfif>,'
        \ . '<cfloop\>.\{-}>\|<cfloop\>.\{-}$:'
            \ . '<\/cfloop\>.\{-}>,'
        \ . '<cfoutput\>.\{-}>\|<cfoutput\>.\{-}$:'
            \ . '<\/cfoutput\>.\{-}>,'
        \ . '<cftimer\>.\{-}>\|<cftimer\>.\{-}$:'
            \ . '<\/cftimer\>.\{-}>,'
        \ . '<!---:--->,'
        \ . '<cfquery\>.\{-}>\|<cfquery\>.\{-}$:<\/cfquery\>.\{-}>,'
        \ . '<cfscript>:<\/cfscript>'
    " Since we are counting things outside of comments only,
    " It is important we account comments accurately or match_words
    " will be wrong and therefore useless
    syntax sync fromstart

endif " exists("loaded_matchit")
