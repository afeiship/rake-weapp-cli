# rake-weapp-cli
> Rake for weapp cli.

## installation
```bash
npm i -S @jswork/rake-weapp-cli
```

## usage
~~~
$ rake -T
rake weapp:publish[desc,cli,root]  # Cli publish to preview version
~~~

## rakefile
```rb
# load taks
Dir.glob("./node_modules/@jswork/rake-*/index.rake").each do |task|
  load task
end
```