
#
# yaml_string = {"Key1"=>"Value1", "Key2"=>"Value2"}
#
#
# puts yaml_string['Key1']


yaml_string1 =  {"Key1"=> {"k1" => {"K3" => "v3"}}, "Key2"=>"Value2"}

puts  yaml_string1['Key1']
puts yaml_string1['Key1']['k1']["K3"]
