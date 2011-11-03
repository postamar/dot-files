require 'rake'

desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  dot_files   = File.dirname(__FILE__)
  files       = %w(vcs/git/gitk
                   vcs/git/gitconfig
                   vcs/git/gitignore
                   vcs/git/gitattributes
                   editors/vim
                   editors/vim/gvimrc
                   editors/vim/vimrc)

  files = Hash[files.zip(Array.new(files.size, "~/."))]

  files.each do |file, destination|
    file_name        = file.split(/\//).last
    source_file      = File.join(dot_files, file)
    destination_file = File.expand_path("#{destination}#{file_name}")

    if File.exist?(destination_file) || File.symlink?(destination_file)
      if replace_all
        replace_file(destination_file, source_file)
      else
        print "overwrite #{destination_file}? [ynaq] "
        case $stdin.gets.chomp.downcase
        when 'a'
          replace_all = true
          replace_file(destination_file, source_file)
        when 'y'
          replace_file(destination_file, source_file)
        when 'q'
          exit
        else
          puts "skipping #{destination_file}"
        end
      end
    else
      link_file(destination_file, source_file)
    end
  end
end

def replace_file(old_file, new_file)
  system %Q{rm "#{old_file}"}
  link_file(old_file, new_file)
end

def link_file(old_file, new_file)
  puts "#{old_file} => #{new_file}"
  system %Q{ln -fs "#{new_file}" "#{old_file}"}
end
