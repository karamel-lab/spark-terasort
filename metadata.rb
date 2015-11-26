name             'spark-terasort'
maintainer       "spark-terasort"
maintainer_email "shelanrc@gmail.com"
license          "Apache v2.0"
description      'Installs/Configures/Runs spark-terasort'
version          "0.1"

recipe            "spark_terasort::install", "Experiment setup for spark-terasort"
recipe            "spark_terasort::experiment",  "configFile=; Experiment name: experiment"


depends "kagent"



%w{ ubuntu debian rhel centos }.each do |os|
  supports os
end



attribute "spark_terasort/group",
:description => "group parameter value",
:type => "string"

attribute "spark_terasort/user",
:description => "user parameter value",
:type => "string"


