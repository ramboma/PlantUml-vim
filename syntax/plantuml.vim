if exists("b:current_syntax")
    finish
endif
syntax keyword plantumlKeyword start end 
syntax keyword plantumlKeyword : ; (  ) >
syntax keyword plantumlKeyword if endif elseif else 
syntax keyword plantumlKeyword   while repeat endrepeat

highlight link plantumlKeyword Function
let b:current_syntax="plantuml"
