rem set CMD64=C:\Windows\SysWOW64\cmd.exe
set REDIS_PATH=C:\Users\n64426\OneDrive - Santander Office 365\Documents\CDatos\proyectos\Programs\PortableApps\Redis-3.2
set REDISDM_PATH= "C:\Users\n64426\OneDrive - Santander Office 365\Documents\CDatos\proyectos\Programs\PortableApps\RedisDesktopManager"

start "REDIS MASTER" /I /MIN C:\Windows\SysWOW64\cmd.exe /K "set PATH=%PATH%;%REDIS_PATH% && redis-server.exe master/redis.conf"
start "REDIS MASTER SENTINEL" /I /MIN C:\Windows\SysWOW64\cmd.exe /K "set PATH=%PATH%;%REDIS_PATH% && redis-server.exe master/sentinel.conf --sentinel"

start "REDIS SLAVE1" /I /MIN C:\Windows\SysWOW64\cmd.exe /K "set PATH=%PATH%;%REDIS_PATH% && redis-server.exe slave1/redis.conf"
start "REDIS SLAVE1 SENTINEL" /I /MIN C:\Windows\SysWOW64\cmd.exe /K "set PATH=%PATH%;%REDIS_PATH% && redis-server.exe slave1/sentinel.conf --sentinel"


start "REDIS SLAVE2" /I /MIN C:\Windows\SysWOW64\cmd.exe /K "set PATH=%PATH%;%REDIS_PATH% && redis-server.exe slave2/redis.conf"
start "REDIS SLAVE2 SENTINEL" /I /MIN C:\Windows\SysWOW64\cmd.exe /K "set PATH=%PATH%;%REDIS_PATH% && redis-server.exe slave2/sentinel.conf --sentinel"

start "Redis Desktop Manager" /I /D %REDISDM_PATH% /NORMAL %REDISDM_PATH%\rdm.exe


REM redis-server.exe master/redis.conf
rem redis-server.exe master/sentinel.conf --sentinel

rem start "REDIS MASTER" /I /MIN %CMD64% /K "set PATH=%PATH%;%REDIS_PATH%; && redis-server.exe master/redis.conf"
rem start "REDIS MASTER SENTINEL" /I /MIN %CMD64% /K "set PATH=%PATH%;%REDIS_PATH%; && redis-server.exe master/sentinel.conf --sentinel"
rem 
rem start "REDIS SLAVE1" /I /MIN %CMD64% /K "set PATH=%PATH%;%REDIS_PATH%; && redis-server.exe slave1/redis.conf"
rem start "REDIS SLAVE1 SENTINEL" /I /MIN %CMD64% /K "set PATH=%PATH%;%REDIS_PATH%; && redis-server.exe slave1/sentinel.conf --sentinel"
rem 
rem 
rem start "REDIS SLAVE2" /I /MIN %CMD64% /K "set PATH=%PATH%;%REDIS_PATH%; && redis-server.exe slave2/redis.conf"
rem start "REDIS SLAVE2 SENTINEL" /I /MIN %CMD64% /K "set PATH=%PATH%;%REDIS_PATH%; && redis-server.exe slave2/sentinel.conf --sentinel"
