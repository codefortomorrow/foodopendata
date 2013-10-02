require 'fileutils'

$img_extentions = "jpg,png,jpeg,bmp,JPG,JPEG,BMP,PNG" # any space is not allowd
$root = Dir.getwd()
$posts_dir = "source/_posts"
$img_dir = "source/images/blog"
$img_src_prefix = ""

def search_for_imgs()
    Dir.glob("*.{#{$img_extentions}}")
end

def mvfile(src, dst)
    FileUtils.mv(src, dst)
end

commit = :false

Dir.chdir($posts_dir)
search_for_imgs().each do |img|
    puts "Now processing #{img}..."
    Dir.glob("*.{md,markdown}").each do |mdfilename|
        mdcontent = IO.read(mdfilename)
        if mdcontent.index(img)
            commit = :true
            puts "\tFind #{img} refered in #{mdfilename}"
            subdirname = mdfilename.chomp(File.extname(mdfilename))

            # build correspond directory
            dir = "#{$root}/#{$img_dir}/#{subdirname}"

            if not Dir.exist?(dir)
                FileUtils.mkdir("#{$root}/#{$img_dir}/#{subdirname}")
            end
            puts "\tmv #{img} #{$root}/#{$img_dir}/#{subdirname}/#{img}"
            FileUtils.mv(img, "#{$root}/#{$img_dir}/#{subdirname}/#{img}")

            # modify the links in the post
            mdcontent.gsub!("/#{$posts_dir}/#{img}", "/images/blog/#{subdirname}/#{img}")
            puts "\t/#{$posts_dir}/#{img} is replaced with /images/blog/#{subdirname}/#{img}"
            File.open(mdfilename, 'w') do |f|
               f.write  mdcontent
            end

            # git add
            puts "git add #{$root}/#{$img_dir}/#{subdirname}/#{img}"
            system "git add #{$root}/#{$img_dir}/#{subdirname}/#{img}"
        end
    end
end

if commit == :true
    system "git commit -a -m \"[ci skip]\""
    # To setup remote repo to push master branch
    system "git remote set-url origin https://github.com/codefortomorrow/foodopendata.git"
    system "git push origin master"
end

