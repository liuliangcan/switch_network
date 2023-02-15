
$nets = @('WLAN','以太网')
$a=netsh interface show interface
$NetStatuss_array=$a|ConvertFrom-String
# $NetStatuss_array

foreach($NetStatus in $NetStatuss_array)
{
    if ($NetStatus.p4 -eq $nets[0]  )
    {
        
        if($NetStatus.p1 -eq '已启用')
        {   
            '正在启用'+$nets[1]
            netsh interface set interface $nets[1] enabled
            '正在禁用'+$nets[0]
            netsh interface set interface $nets[0] disabled
        }
        else {
            '正在启用'+$nets[0]
            netsh interface set interface $nets[0] enabled
            '正在禁用'+$nets[1]
            netsh interface set interface $nets[1] disabled
        }
    }
    
}