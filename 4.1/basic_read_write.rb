class BaseReadWrite
  def initialize
  end

  def self.main
    aFile = File.new("text.txt", "a+")
    File.truncate("text.txt", 0)
    if aFile
      aFile.syswrite("Fred\n")
      aFile.syswrite("Sam\n")
      aFile.syswrite("Jill\n")
      aFile.syswrite("Jenny\n")
      aFile.syswrite("Zorro\n")
    else
      puts "Unable to open file!"
    end
    aFile.close

    arrs = IO.readlines("text.txt")
    arrs.size.times do |arr|
      p arrs[arr].chomp
    end
  end
end

BaseReadWrite.main