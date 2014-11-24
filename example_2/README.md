## Preparation

```sql
create database test;
create table users (`id` int primary key);
```

## How to use

```bash
$ rvm 1.9.3@test_fiber,2.0@test_fiber,2.1@test_fiber --create do sh -c 'echo ==== $RUBY_VERSION; bundle; bundle exec ruby test.rb'
==== ruby-1.9.3-p551
"ok"
==== ruby-2.0.0-p598
$HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/em-synchrony-1.0.3/lib/em-synchrony/mysql2.rb:35:in `yield': fiber called across stack rewinding barrier (FiberError)
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/em-synchrony-1.0.3/lib/em-synchrony/mysql2.rb:35:in `query'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/em-synchrony-1.0.3/lib/active_record/connection_adapters/em_mysql2_adapter.rb:30:in `block in em_mysql2_connection'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/em-synchrony-1.0.3/lib/em-synchrony/connection_pool.rb:13:in `call'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/em-synchrony-1.0.3/lib/em-synchrony/connection_pool.rb:13:in `block in initialize'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/em-synchrony-1.0.3/lib/em-synchrony/connection_pool.rb:12:in `times'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/em-synchrony-1.0.3/lib/em-synchrony/connection_pool.rb:12:in `initialize'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/em-synchrony-1.0.3/lib/active_record/connection_adapters/em_mysql2_adapter.rb:15:in `new'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/em-synchrony-1.0.3/lib/active_record/connection_adapters/em_mysql2_adapter.rb:15:in `em_mysql2_connection'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/activerecord-3.2.21/lib/active_record/connection_adapters/abstract/connection_pool.rb:315:in `new_connection'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/activerecord-3.2.21/lib/active_record/connection_adapters/abstract/connection_pool.rb:325:in `checkout_new_connection'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/activerecord-3.2.21/lib/active_record/connection_adapters/abstract/connection_pool.rb:247:in `block (2 levels) in checkout'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/activerecord-3.2.21/lib/active_record/connection_adapters/abstract/connection_pool.rb:242:in `loop'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/activerecord-3.2.21/lib/active_record/connection_adapters/abstract/connection_pool.rb:242:in `block in checkout'
    from $HOME/.rvm/rubies/ruby-2.0.0-p598/lib/ruby/2.0.0/monitor.rb:211:in `mon_synchronize'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/activerecord-3.2.21/lib/active_record/connection_adapters/abstract/connection_pool.rb:239:in `checkout'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/em-synchrony-1.0.3/lib/em-synchrony/activerecord.rb:12:in `block in connection'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/em-synchrony-1.0.3/lib/em-synchrony/thread.rb:63:in `synchronize'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/em-synchrony-1.0.3/lib/em-synchrony/activerecord.rb:11:in `connection'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/activerecord-3.2.21/lib/active_record/connection_adapters/abstract/connection_pool.rb:410:in `retrieve_connection'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/activerecord-3.2.21/lib/active_record/connection_adapters/abstract/connection_specification.rb:171:in `retrieve_connection'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/activerecord-3.2.21/lib/active_record/connection_adapters/abstract/connection_specification.rb:145:in `connection'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/activerecord-3.2.21/lib/active_record/model_schema.rb:229:in `columns'
    from $HOME/workspace/saybot/ruby/test_fiber/example_2/user.rb:7:in `<top (required)>'
    from test.rb:18:in `block in <main>'
    from $HOME/.rvm/gems/ruby-2.0.0-p598@test_fiber/gems/em-synchrony-1.0.3/lib/em-synchrony.rb:38:in `block (2 levels) in synchrony'
==== ruby-2.1.5
$HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/em-synchrony-1.0.3/lib/em-synchrony/mysql2.rb:35:in `yield': fiber called across stack rewinding barrier (FiberError)
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/em-synchrony-1.0.3/lib/em-synchrony/mysql2.rb:35:in `query'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/em-synchrony-1.0.3/lib/active_record/connection_adapters/em_mysql2_adapter.rb:30:in `block in em_mysql2_connection'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/em-synchrony-1.0.3/lib/em-synchrony/connection_pool.rb:13:in `call'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/em-synchrony-1.0.3/lib/em-synchrony/connection_pool.rb:13:in `block in initialize'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/em-synchrony-1.0.3/lib/em-synchrony/connection_pool.rb:12:in `times'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/em-synchrony-1.0.3/lib/em-synchrony/connection_pool.rb:12:in `initialize'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/em-synchrony-1.0.3/lib/active_record/connection_adapters/em_mysql2_adapter.rb:15:in `new'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/em-synchrony-1.0.3/lib/active_record/connection_adapters/em_mysql2_adapter.rb:15:in `em_mysql2_connection'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/activerecord-3.2.21/lib/active_record/connection_adapters/abstract/connection_pool.rb:315:in `new_connection'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/activerecord-3.2.21/lib/active_record/connection_adapters/abstract/connection_pool.rb:325:in `checkout_new_connection'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/activerecord-3.2.21/lib/active_record/connection_adapters/abstract/connection_pool.rb:247:in `block (2 levels) in checkout'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/activerecord-3.2.21/lib/active_record/connection_adapters/abstract/connection_pool.rb:242:in `loop'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/activerecord-3.2.21/lib/active_record/connection_adapters/abstract/connection_pool.rb:242:in `block in checkout'
    from $HOME/.rvm/rubies/ruby-2.1.5/lib/ruby/2.1.0/monitor.rb:211:in `mon_synchronize'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/activerecord-3.2.21/lib/active_record/connection_adapters/abstract/connection_pool.rb:239:in `checkout'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/em-synchrony-1.0.3/lib/em-synchrony/activerecord.rb:12:in `block in connection'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/em-synchrony-1.0.3/lib/em-synchrony/thread.rb:63:in `synchronize'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/em-synchrony-1.0.3/lib/em-synchrony/activerecord.rb:11:in `connection'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/activerecord-3.2.21/lib/active_record/connection_adapters/abstract/connection_pool.rb:410:in `retrieve_connection'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/activerecord-3.2.21/lib/active_record/connection_adapters/abstract/connection_specification.rb:171:in `retrieve_connection'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/activerecord-3.2.21/lib/active_record/connection_adapters/abstract/connection_specification.rb:145:in `connection'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/activerecord-3.2.21/lib/active_record/model_schema.rb:229:in `columns'
    from $HOME/workspace/saybot/ruby/test_fiber/example_2/user.rb:7:in `<top (required)>'
    from test.rb:18:in `block in <main>'
    from $HOME/.rvm/gems/ruby-2.1.5@test_fiber/gems/em-synchrony-1.0.3/lib/em-synchrony.rb:38:in `block (2 levels) in synchrony'
```

## Tested with multiple active_record versions

* ActiveRecord 3.2
* ActiveRecord 4.0
* ActiveRecord 4.1
