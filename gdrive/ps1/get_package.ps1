param(
    [string]$architecture
)

if("$architecture" -eq "32bit"){
    $url=$(Get-Content ../windows/url_list.txt | grep "386" | awk '{print $2}')
}elseif("$architecture" -eq "64bit"){
    $url=$(Get-Content ../windows/url_list.txt | grep "x64" | awk '{print $2}')
}

if("$url"){
    firefox "$url"
}


<#
.SYNOPSIS
gdrive をダウンロードします。

.DESCRIPTION
gdrive をダウンロードします。

.PARAMETER architecture
OS のアーキテクチャに合わせたパッケージをダウンロードします。

有効な値:

* 32bit
* 64bit
#>