settings {
    logfile = "/var/log/lsyncd.log",
    statusFile = "/var/log/lsyncd.stat",
    statusInterval = 10, --[[интервал обновления файла lsyncd.status в секундах]]
    insist = true,
    nodaemon = false,
    maxProcesses = 1,
}

sync {
    default.rsyncssh,
    source="/var/www/{{ app_ver }}", --[[каталог-источник для синхронизации]]
    host = "root@{{ lsyncd_ip }}",
    targetdir="/var/www/{{ app_ver }}", --[[целевой каталог на сервере, заданный в параметре host]]
    delete = 'running',
    --delay = 20,
    rsync = {
        _extra = { "-ausS" },
        update = true,
    }
}
