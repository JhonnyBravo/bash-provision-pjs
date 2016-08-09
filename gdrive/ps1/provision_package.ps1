param(
    [switch]$uninstall,
    [switch]$install,
    [string]$architecture
)

$install_path="$(Split-Path -Parent $profile)/script"

function install_package([string]$package_name){
    $package_path=$(find ~/Downloads -name "$package_name" | sed -e "s/\/c\//c:\\/")

    if($(Test-Path "$install_path") -eq $false){
        New-Item -ItemType directory "$install_path"
    }

    Copy-Item "$package_path" "${install_path}/gdrive.exe"
    Remove-Item "$package_path"
    echo "${install_path} へパスを通してください。"
}

function uninstall_package(){
    Remove-Item "${install_path}/gdrive.exe"
}

if($install){
    if("$architecture" -eq "32bit"){
        install_package "gdrive-windows-386.exe"
    }elseif("$architecture" -eq "64bit"){
        install_package "gdrive-windows-x64.exe"
    }
}elseif($uninstall){
    uninstall_package
}


<#
.SYNOPSIS
gdrive をインストール / アンインストールします。

.DESCRIPTION
gdrive をインストール / アンインストールします。

.PARAMETER uninstall
gdrive をアンインストールします。

.PARAMETER install
gdrive をインストールします。

.PARAMETER architecture
OS のアーキテクチャに合わせたパッケージをインストールします。

有効な値:

* 32bit
* 64bit
#>