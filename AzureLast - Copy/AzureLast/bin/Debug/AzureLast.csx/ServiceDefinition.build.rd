<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="AzureLast" generation="1" functional="0" release="0" Id="f6cd9e5b-d4d8-4b86-a2c9-0e2628fab7af" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="AzureLastGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="WebRole1:HttpIn" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/AzureLast/AzureLastGroup/LB:WebRole1:HttpIn" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="WebRole1Instances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/AzureLast/AzureLastGroup/MapWebRole1Instances" />
          </maps>
        </aCS>
        <aCS name="WebRole1:DiagnosticsConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/AzureLast/AzureLastGroup/MapWebRole1:DiagnosticsConnectionString" />
          </maps>
        </aCS>
        <aCS name="WebRole1:?IsSimulationEnvironment?" defaultValue="">
          <maps>
            <mapMoniker name="/AzureLast/AzureLastGroup/MapWebRole1:?IsSimulationEnvironment?" />
          </maps>
        </aCS>
        <aCS name="WebRole1:?RoleHostDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/AzureLast/AzureLastGroup/MapWebRole1:?RoleHostDebugger?" />
          </maps>
        </aCS>
        <aCS name="WebRole1:?StartupTaskDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/AzureLast/AzureLastGroup/MapWebRole1:?StartupTaskDebugger?" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:WebRole1:HttpIn">
          <toPorts>
            <inPortMoniker name="/AzureLast/AzureLastGroup/WebRole1/HttpIn" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapWebRole1Instances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/AzureLast/AzureLastGroup/WebRole1Instances" />
          </setting>
        </map>
        <map name="MapWebRole1:DiagnosticsConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureLast/AzureLastGroup/WebRole1/DiagnosticsConnectionString" />
          </setting>
        </map>
        <map name="MapWebRole1:?IsSimulationEnvironment?" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureLast/AzureLastGroup/WebRole1/?IsSimulationEnvironment?" />
          </setting>
        </map>
        <map name="MapWebRole1:?RoleHostDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureLast/AzureLastGroup/WebRole1/?RoleHostDebugger?" />
          </setting>
        </map>
        <map name="MapWebRole1:?StartupTaskDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureLast/AzureLastGroup/WebRole1/?StartupTaskDebugger?" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="WebRole1" generation="1" functional="0" release="0" software="E:\Officials\Gopal Patel\AzureLast - Copy\AzureLast\bin\Debug\AzureLast.csx\roles\WebRole1" entryPoint="base\x86\WaHostBootstrapper.exe" parameters="base\x86\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="HttpIn" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="DiagnosticsConnectionString" defaultValue="" />
              <aCS name="?IsSimulationEnvironment?" defaultValue="" />
              <aCS name="?RoleHostDebugger?" defaultValue="" />
              <aCS name="?StartupTaskDebugger?" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;WebRole1&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;WebRole1&quot;&gt;&lt;e name=&quot;HttpIn&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/AzureLast/AzureLastGroup/WebRole1Instances" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyID name="WebRole1Instances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="177741c8-4fa9-41fb-a34b-28290de8a380" ref="Microsoft.RedDog.Contract\ServiceContract\AzureLastContract@ServiceDefinition.build">
      <interfacereferences>
        <interfaceReference Id="a0fd947c-8a6c-4016-b6e8-1ae80ade4305" ref="Microsoft.RedDog.Contract\Interface\WebRole1:HttpIn@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/AzureLast/AzureLastGroup/WebRole1:HttpIn" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>