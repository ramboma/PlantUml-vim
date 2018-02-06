if !exists("g:plant_command_jarpath")
    let g:plant_command_jarpath="e:\\baidupan\\tongbu\\mywork\\graphviz\\plantuml.jar "
endif
if !exists("g:plant_command")
    let g:plant_command="java -jar ".g:plant_command_jarpath." -charset utf-8 "
endif
function! PlantumlCompileAndRunFile()
    silent !clear
    execute "!".g:plant_command." ".bufname("%")
    "if you want to use the system method,uncomment the below lines
    "let compileMsg=system(g:plant_command . bufname("%") . " 2>&1")
    "set splitbelow
    "10split _Plantuml_CompileMsg_
    "set nosplitbelow

    "normal! ggdG
    
    "setlocal filetype=plantumlCompileMsg
    "setlocal buftype=nofile

    "call append(0,split(compileMsg,'\v\r'))
endfunction

nnoremap <buffer><LocalLeader>r :call PlantumlCompileAndRunFile()<cr>
