5. 
```ruby
[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end
```


| Line  |  Action |  Object | Side-Effect  |  Return Value | Is Return Value Used?  |
|---|---|---|---|---|---|
| 1  | method call `map`   | [[1, 2], [3, 4]]  | none  | new array with transformed elements  | no  |
| 1-5  | outer block execution  | [[1, 2], [3, 4]]  | none  |   | no  |
| 2  | method call `map`  | each subarray  | none  | new subarray  | yes by outer `map` method  | 
| 2-4  | inner block execution  | each element in each subarray  | none  | an integer  | yes by inner map method  |
| 3  | method call `*`  | element within each subarray  | none  | an integer | yes to determine value of inner block  |

returns [[2, 4], [6, 8]]
___

6. 
```ruby
[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]
```

| Line  |  Action |  Object | Side-Effect  |  Return Value | Is Return Value Used?  |
|---|---|---|---|---|---|
| 1  | method call `select`  | array of hashes  | no  | new array  | no  |
| 1-5  | block execution  | sub-elements in array (hashes)  | none  | boolean  | yes as criteria for `select` method  |
| 2  | method call `all?`  | sub-elements in array (hashes)  | none  | boolean  | yes as return for outer block execution  |
| 2-4  | nested block execution  | hash  | none  | boolean  | yes for criteria for `all?' method return  |
| 3  | equality comparison operator | string return from `value[0]`  |  none | boolean |  yes for block return |
| 3  | method call `String#[]`  | the values in each nested hash  | none  | the first character of each value in the nested hashes  | yes by equality comparison operator  |
| 3  | method call `.to_s`  | the key in each nested hash  | none  | a string character | yes by equality comparison operator  |
|   |   |   |   |   |   |

---

7.
