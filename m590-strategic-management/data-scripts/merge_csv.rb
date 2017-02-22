require 'pry'

def merge_files(type, output_file)
  downloads_path = Dir.pwd + '/downloads'
  downloads_dir = Dir.new downloads_path

  fo = File.open(output_file, 'a')

  downloads_dir.entries.each do |file|
    if file =~ type
      fi = File.open('downloads/' + file, 'r')
      fi.each do |line|
        fo.puts line
      end
      fi.close
    end
  end
  fo.close
end


output_FIR = 'downloads/FI_output.csv'
merge_files(/FIR/, output_FIR)
