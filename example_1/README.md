## How to use

```bash
$ rvm 1.9.3,2.0,2.1 do sh -c 'echo ==== $RUBY_VERSION; ruby test.rb'
==== ruby-1.9.3-p551
User
==== ruby-2.0.0-p598
/Users/hanfei/workspace/saybot/ruby/test_fiber/example_1/user.rb:4:in `yield': fiber called across stack rewinding barrier (FiberError)
    from /Users/hanfei/workspace/saybot/ruby/test_fiber/example_1/user.rb:4:in `<top (required)>'
    from test.rb:4:in `block in <main>'
==== ruby-2.1.5
/Users/hanfei/workspace/saybot/ruby/test_fiber/example_1/user.rb:4:in `yield': fiber called across stack rewinding barrier (FiberError)
    from /Users/hanfei/workspace/saybot/ruby/test_fiber/example_1/user.rb:4:in `<top (required)>'
    from test.rb:4:in `block in <main>'
```
