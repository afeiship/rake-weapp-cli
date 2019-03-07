namespace :weapp do
  # rake hello_with_args[afei,bash]
  desc "Cli publish to preview version"
  task :publish, [:cli, :root] do |task, args|
    args.with_defaults(
      :cli => "/Applications/wechatwebdevtools.app/Contents/MacOS/cli",
      :root => Dir.pwd,
      :desc => "BY_ROBOT",
    )

    # datetime = Time.now.strftime("%Y-%m-%d %H:%M:%S")
    shorthash = `git rev-parse --short HEAD`.gsub("\n", "")
    sh "#{args[:cli]} -u ROBOT_#{shorthash}@#{args[:root]} --upload-desc #{args[:desc]}"
  end
end
