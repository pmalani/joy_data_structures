sadd schoolFriends 'Homer' 'Bart' 'Lisa'
;

sadd workFriends 'Marge' 'Lisa' 'Maggie'
;

sunion schoolFriends workFriends
;

sinter schoolFriends workFriends
;

sdiff schoolFriends workFriends
;

sdiff workFriends schoolFriends
;

unlink schoolFriends workFriends
;

