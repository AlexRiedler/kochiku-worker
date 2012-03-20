class BuildStrategy
  class << self
    def execute_build(build_kind, test_files)
      system %[ruby -e "now = Time.now.usec; File.open('now.log', 'w') {|f|f.write(now)}; exit(now % 3 == 0 ? 1 : 0)"]
    end

    def promote_build(build_ref)
    end

    def artifacts_glob
      ["now.log"]
    end
  end
end
