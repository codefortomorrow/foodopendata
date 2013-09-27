require 'fileutils'

$img_extentions = "jpg,png,jpeg,bmp" # any space is not allowd
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

Dir.chdir($posts_dir)
search_for_imgs().each do |img|
    puts "Now processing #{img}..."
    Dir.glob("*.{md,markdown}").each do |mdfilename|
        mdcontent = IO.read(mdfilename)
        if mdcontent.index(img)
            puts "\tFind #{img} refered in #{mdfilename}"
            subdirname = mdfilename.chomp(File.extname(mdfilename))
            mdcontent.gsub!("#{$posts_dir}/#{img}", "/images/blog/#{subdirname}/#{img}")
            puts "\t#{$posts_dir}/#{img} is replaced with /images/blog/#{subdirname}/#{img}"
            File.open(mdfilename, 'w') do |f|
               f.write  mdcontent
            end
            puts "\tmv #{img} #{$root}/#{$img_dir}/#{subdirname}/#{img}"
            FileUtils.mkdir("#{$root}/#{$img_dir}/#{subdirname}")
            FileUtils.mv(img, "#{$root}/#{$img_dir}/#{subdirname}/#{img}")
        end
    end
end
