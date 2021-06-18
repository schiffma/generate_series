:: Destination path - specify where to move package after build
SET DEST_PATH=C:\Users\schiffma\Documents\GitHub\generate_series
MKDIR "%DEST_PATH%"

SET SQLITE_DIR=C:\Users\schiffma\Documents\GitHub\generate_series


:: WIN64 SQLITE BUILD PROCEDURE

:: Set path variables
CALL "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"

:: Build SQLite x64
CD %SQLITE_DIR%
:: cl sqlite3.c -DSQLITE_ENABLE_FTS5 -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_FTS3_PARENTHESIS -DSQLITE_ENABLE_STAT4 -DSQLITE_SOUNDEX -DSQLITE_ENABLE_JSON1 -DSQLITE_ENABLE_GEOPOLY -DSQLITE_ENABLE_RTREE -DSQLITE_API=__declspec(dllexport) -link -dll -out:sqlite3.dll

:: Build extensions

cl /MD series.c -link -dll -out:series64.dll

pause



