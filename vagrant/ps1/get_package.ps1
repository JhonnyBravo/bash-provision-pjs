$url=$(Get-Content ../windows/url_list.txt | awk '{print $2}')
firefox "$url"


<#
.SYNOPSIS
vagrant をダウンロードします。

.DESCRIPTION
vagrant をダウンロードします。
#>