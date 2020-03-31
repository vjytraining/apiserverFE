#!/bin/bash                                                                                                                                          
                                                                                                                                                     
#Entering to the home directiory                                                                                                                     
cd /                                                                                                                                                 
#creating the apiserver directory                                                                                                                    
mkdir test2                                                                                                                                          
chmod 777 test2
#entering to the test2                                                                                                                           
cd test2                                                                                                                                             
#cloning the files here and springboot_mumbai/FlighStatusServiceImpl                                                                             
git clone https://ansible-story@dev.azure.com/ansible-story/springbootapp_mumbai/_git/springbootapp_mumbai                                          
cd
cp /tmp/pom.xml /test2/springbootapp_mumbai/FlightsStatusResource/pom.xml
cd /test2/springbootapp_mumbai/FlightsStatusResource
#change the home path in pom.xml file                                                                                                                
#sed '61s/(/home/ubuntu/deployapp1/springbootapp_mumbai/FlightStatusServiceImpl)//home/ubuntu/test2/springbootapp_mumbai/FlightStatusServiceImpl/gi' pom.xml                                            
sudo nohup  mvn spring-boot:run -Doracle.jdbc.timezoneAsRegion=false &
sleep 10s
