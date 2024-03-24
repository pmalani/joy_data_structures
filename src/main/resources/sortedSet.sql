zadd theSimpsons 12 Bart 8 Lisa
;

zcard theSimpsons
;

zscan theSimpsons 0
;

zrange theSimpsons 0 -1
;

zrangebyscore theSimpsons 0 10
;

zadd theSimpsons 11 Bart
;

zscan theSimpsons 0
;

unlink theSimpsons
;