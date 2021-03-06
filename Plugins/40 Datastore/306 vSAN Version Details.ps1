$Title = "[Datastore] vSAN Version"
$Header =  "[Datastore] vSAN Version Details"
$Display = "Table"
$Author = "Dario Doerflinger"
$PluginVersion = 1.1
$PluginCategory = "vSphere"

# Start of Settings
# End of Settings

foreach ($ClusterView in $clusviews) {
   if($ClusterView.ConfigurationEx.VsanConfigInfo.Enabled) {
      Get-VSANVersion -paramCluster $ClusterView
   }
}

$Comments = ("vSAN Version deatils from the Get-vSANView CMDlet")
# Changelog
## 1.0 : Initial Release
## 1.1 : Changed the cluster variable