set homerLock ignored NX EX 60
;

hmset homer firstName Homer lastName Simpson city Springfield
;

del homerLock
;

hgetall homer
;

unlink homer
;

set homerLock ignored NX EX 60
;

-- run pessimistic2
hmset homer firstName Homer lastName Simpson city Springfield
;

del homerLock
;

hgetall homer
;

unlink homer
;