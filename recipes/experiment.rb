
script 'run_experiment' do
  cwd "/tmp"
  user node['spark-terasort']['user']
  group node['spark-terasort']['group']
  interpreter "bash"
  code <<-EOM
wget https://s3-eu-west-1.amazonaws.com/karamel/terasort_2.10-0.0.1.jar

/srv/spark-1.3.1-bin-hadoop2.4/bin/spark-submit --master spark://172.28.128.5:7077 --class eastcircle.terasort.SparkTeraSort /tmp/terasort_2.10-0.0.1.jar hdfs://172.28.128.5:8020 /srv/teragen/ /terasortOut 1
  EOM
end

