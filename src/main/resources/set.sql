sadd weekdays 'Mon'
;

smembers weekdays
;

sscan weekdays 0
;

sadd weekdays 'Tue'
;

smembers weekdays
;

srem weekdays 'Tue'
;

smembers weekdays
;

del weekdays
;

smembers weekdays
;

