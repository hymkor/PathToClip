if not "%1" == "" goto %1
    go fmt
    go build "-ldflags=-H windowsgui"
    goto end

:install
    if exist PathToClip.exe sendto.cmd PathToClip.exe
    goto end
:end
