$url=$(Get-Content ../windows/url_list.txt | awk '{print $2}')
firefox "$url"


<#
.SYNOPSIS
virtual box をダウンロードします。

.DESCRIPTION
virtual box をダウンロードします。
#>