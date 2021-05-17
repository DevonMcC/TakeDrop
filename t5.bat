@echo off
Rem t5.bat: tail 5 - show 5 most recent entries in current directory.
Rem dir /od %* | take -9 1 -
SETLOCAL
if NOT /%1/==// goto L_SetArg
set ARG="*.*"
goto L_DoIt

:L_SetArg
set ARG=%1

:L_DoIt
Rem Last 2 lines are summaries; 2 others may be "." and ".."
dir /od %ARG% | drop -2 1 - | perl -e "while (<>) {unless (/\<DIR\>/) { print $_}}" | take -5 1 -
Rem dir /od %ARG% | tail -9 | head -5
Rem dir /od | grep -v "<DIR>" | take.pl - -7 | take.pl - 5

ENDLOCAL
