namespace :weapp do
  # rake hello_with_args[afei,bash]
  desc "Cli publish to preview version"
  task :publish, [:cli, :dir] do |task, args|
    args.with_defaults(
      :cli => "/Applications/wechatwebdevtools.app/Contents/MacOS/cli",
      :dir => Dir.pwd,
    )

    puts args
    # puts "hello world, #{args[:name]} from #{args[:from]}!"
  end
end
