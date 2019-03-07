namespace :weapp do
  # rake hello_with_args[afei,bash]
  desc "Cli publish to preview version"
  task :publish, [:desc, :cli, :root] do |task, args|
    args.with_defaults(
      :desc => "BY_ROBOT",
      :cli => "/Applications/wechatwebdevtools.app/Contents/MacOS/cli",
      :root => Dir.pwd,
    )

    version = SemVer.find

    # datetime = Time.now.strftime("%Y-%m-%d %H:%M:%S")
    shorthash = `git rev-parse --short HEAD`.strip
    sh "#{args[:cli]} -u #{version.to_s}@#{args[:root]} --upload-desc #{args[:desc]}_#{shorthash}"
  end
end
