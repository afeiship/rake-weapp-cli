namespace :weapp do
  # rake hello_with_args[afei,bash]
  desc "Cli publish to preview version"
  task :publish, [:cli, :root] do |task, args|
    args.with_defaults(
      :cli => "/Applications/wechatwebdevtools.app/Contents/MacOS/cli",
      :root => Dir.pwd,
    )

    datetime = Time.now.strftime("%Y-%m-%d %H:%M:%S")
    shorthash = `git rev-parse --short HEAD`
    sh "#{args[:cli]} -u ROBOT@#{args[:root]} --upload-desc #{shorthash}"
  end
end
