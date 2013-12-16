rem http://activemq.apache.org/nms/source.html


# nunit
cd c:\Chocolatey\bin
cmd /c cinst svn
cmd /c cinst nspec4nunit


del /q /s activemq-dotnet 2>NUL
svn --trust-server-cert co https://svn.apache.org/repos/asf/activemq/activemq-dotnet activemq-dotnet
cd activemq-dotnet


cd Apache.NMS\trunk
nant install-all

cd ..\..\Apache.NMS.ActiveMQ\trunk
nant install-all

cd ..\..\Apache.NMS.MSMQ\trunk
nant install-all

cd ..\..\Apache.NMS.EMS\trunk
nant install-all

cd ..\..\Apache.NMS.WCF\trunk
nant install-all
