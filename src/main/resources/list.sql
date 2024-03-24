rpush months 'Feb' 'Mar'
;

lrange months 0 -1
;

lpush months 'Jan'
;

lrange months 0 1
;

lpop months
;

lrange months 0 -1
;

rpop months
;

llen months
;

del months
;