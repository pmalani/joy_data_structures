watch familySize
;

multi
;

incr familySize
;

exec
;

get familySize
;

watch familySize
;

-- now execute optimistic2.sql in a separate session

multi
;

incr familySize
;

exec
;


get familySize
;

unlink familySize
;