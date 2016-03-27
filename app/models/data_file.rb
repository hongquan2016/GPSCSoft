class DataFile < ActiveRecord::Base
    attr_accessor :sheet

  def self.save_file(sheet)   

    file_name = sheet['datafile'].original_filename  if  (sheet['datafile'] !='')    
    file = sheet['datafile'].read    

    file_type = file_name.split('.').last
    new_name_file = Time.now.to_i
    name_folder = new_name_file
    new_file_name_with_type = "#{new_name_file}." + file_type

    file_root = "#{Sheet}"


    Dir.mkdir(file_root + "#{name_folder}");
      File.open(file_root + "#{name_folder}/" + new_file_name_with_type, "wb")  do |f|  
        f.write(file) 
    end
  end
end