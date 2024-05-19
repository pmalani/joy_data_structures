# Joy of Persistent Data Structures

## Data Structures
* List
* Set
* Map
* Sorted Set
* Many others

## Redis Architecture
* Single threaded model
* Fast, In memory
  * Remember big (O) notation?
  * Optionally, with Append-Only File (AOF) persistence mode 
* Understand the deployment topology 
  * Single
  * High-Availability (HA)
  * Clustered
  * Clustered HA

## Map
* Key / value store
* [map.sql](src%2Fmain%2Fresources%2Fmap.sql)

## List
* Implemented as Linked List
* Easy to add and remove items from front and back
* Implement other data structures on top
  * Stack
  * Queue
* [list.sql](src%2Fmain%2Fresources%2Flist.sql)

## Set
* Unique items in a set
* [set.sql](src%2Fmain%2Fresources%2Fset.sql)
* Support standard set operations
  * Intersection
  * Union
  * Difference
* [setOperations.sql](src%2Fmain%2Fresources%2FsetOperations.sql)

## Map
* Store by key and value
* A common way to represent a Java object
* [map2.sql](src%2Fmain%2Fresources%2Fmap2.sql)

## Sorted Set
* Just like Set, but with extra weight property
* Useful in implementing problems like leader board in games
* [sortedSet.sql](src%2Fmain%2Fresources%2FsortedSet.sql)

## Counter
* Atomically increment and decrement
* [counter.sql](src%2Fmain%2Fresources%2Fcounter.sql)

## Batching
* Also, known as pipelining
* Send the commands in a batch to:
  * Reduce remote calls
  * Improve performance
* Not supported in CLI

## Transactional
* The commands in a batch can be interwoven
* With `multi` and `exec`, the commands will be executed atomically
* To cancel a transaction started with `multi`, we can use `discard`
* There is no concept of rollback, `discard` just discards the command queue
* Be careful about errors within `multi`
* [transaction.sql](src%2Fmain%2Fresources%2Ftransaction.sql)

## Script
* What if we need to use intermediate values?
  * Use script
  * In Lua programming language
* All commands in a script are executed atomically
* Scripts can be cached on the server using `script load`
* [script.sql](src%2Fmain%2Fresources%2Fscript.sql)

## Optimistic Transactions
* Use `watch` outside `multi`
* `exec` will return null / nil 
  * If watched keys were touched
  * And transaction is aborted
* All keys are unwatched after `exec` or `discard` (or error)
* [optimistic1.sql](src%2Fmain%2Fresources%2Foptimistic1.sql)
* [optimistic2.sql](src%2Fmain%2Fresources%2Foptimistic2.sql)

## Pessimistic Lock
* Use the `set NX EX` options
  * With `NX' the value will only be set if doesn't exist
  * With `EX', the key will automatically expire
* [pessimistic1.sql](src%2Fmain%2Fresources%2Fpessimistic1.sql)
* [pessimistic2.sql](src%2Fmain%2Fresources%2Fpessimistic2.sql)

## Others
* Bit manipulation
* Geospatial
* Time Series
* Pub / Sub
* Probabilistic Data Structures (e.g. Bloom Filter)
* Document store (with JSON)

## Redis Clients
* Java
  * Jedis
  * Lettuce
  * Redisson

## Limitations
* There is (pretty-much) only one datatype: string
* There is no nesting of data structures (types)

## Recommendations
* Use `scan` (versions) instead of `key` (version)
* Use `unlink` instead of `del`
* Don't use pessimistic locking (distributed locks are hard!)
* Use scripts (stored procedures???) sparingly
* Cache or Database?

## Resources
* [Redis Commands](https://redis.io/commands/)
* [Distributed Locks with Redis](https://redis.io/docs/manual/patterns/distributed-locks/)
* [Lua Programming Language](https://www.lua.org/)
* [Scripting with Lua](https://redis.io/docs/interact/programmability/eval-intro/)
* [Redis Clients](https://redis.io/resources/clients/)