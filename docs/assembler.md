# Assembler 

The [assembler](https://github.com/prp-e/8bitcomputer/tree/master/assembler) is a little ruby code, that helps you generate __machine code__. 

## How to use assembler?

First, you need to creat a ruby file, and import assembler file to it. for example :

```ruby
require "./assembler.rb"
```
Then, you need to creat a new `Assembler` object :

```ruby
 a = Assembler.new("ADD 1, 3")
```

Now, you can get all the machine code by calling `MachineCode` method. 

## TODO 

* Examples
* Expanding this document
