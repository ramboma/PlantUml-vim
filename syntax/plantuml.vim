if exists("b:current_syntax")
    finish
endif
syntax keyword plantumlKeyword start end 
syntax keyword plantumlKeyword : ; (  ) >
syntax keyword plantumlKeyword if endif elseif else 
syntax keyword plantumlKeyword   while repeat endrepeat

syntax keyword plantumlDefine   startuml enduml

syntax match plantumlComment   "\v\/\/.*$"
syntax region plantumlComment   start="/\*" skip="\\." end="\*/"
syntax region plantumlString   start="\"" end="\""

highlight link plantumlDefine  Define
highlight link plantumlKeyword Function
highlight link plantumlComment Comment
highlight link plantumlString  String
let b:current_syntax="plantuml"
