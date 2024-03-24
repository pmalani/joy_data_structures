multi
;

hmset homer firstName Homer lastName Simpson city Springfield
;

incr familySize
;

exec
;

hgetall homer
;

get familySize
;

multi
;

hmset lisa firstName Lisa lastName Simpson city Springfield
;

incr familySize
;

discard
;

hgetall lisa
;

get familySize
;

unlink homer
;

unlink lisa
;

unlink familySize
;
