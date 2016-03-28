setlocal
set "GOARCH=386"
if not "%1" == "" goto %1
    go fmt
    go build "-ldflags=-H windowsgui"
    goto end

:install
    if exist PathToClip.exe sendto.cmd PathToClip.exe
    goto end

:package
    zip -9 PathToClip-%DATE:/=%.zip PathToClip.exe readme.md PathToClip.go sendto.cmd make.cmd
    goto end
:end
endlocal
