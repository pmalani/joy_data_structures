eval "return 'Hello'" 0
;

eval "return { KEYS[1], KEYS[2], ARGV[1], ARGV[2], ARGV[3] }" 2 key1 key2 arg1 arg2 arg3
;

eval "local fs = redis.call('incr', KEYS[1]); redis.call('hmset', KEYS[2], 'firstName', ARGV[1], 'lastName', ARGV[2], 'familyPosition', fs); return fs" 2 familySize homer Homer Simpson
;

get familySize
;

hgetall homer
;

unlink familySize
;

unlink homer
;

script load "return 'Hello'"
;

evalsha  af6b5d19da06755d789858a67760f34bbd2e9e52 0
;