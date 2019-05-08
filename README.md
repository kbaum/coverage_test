
Demonstrates that line 4 of [dog.rb](https://github.com/kbaum/coverage_test/blob/master/dog.rb#L4) gives a value of nil coverage with the coverband library using ruby 2.6.3. 

To repro, clone the project and run test.rb using ruby 2.6.3

```
./test.rb
```

The following coverage is returned

```
{"/Users/karlbaum/workspace/coverage_test/dog.rb"=>[1, 1, 1, nil, 0, nil, 1, nil, nil]}
```

Notice that line 4 (index 3) has a value of nil even though we actually covered that line. As a side note, even if we did not cover it, I would expect that value to be 0.

If I run this with ruby 2.4.4, I get:

```
{"/Users/karlbaum/workspace/coverage_test/dog.rb"=>[1, 1, nil, 1, 0, nil, 1, nil, nil]}
```

Instead of line 4 being nil, it is now line 3. This is also unexpected as we have covered line 3.
