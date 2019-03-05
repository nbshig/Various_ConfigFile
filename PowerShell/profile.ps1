
#開始したい場所
Set-Location C:\work\powerShellテスト

Write-Host "実行ポリシーは" (Get-ExecutionPolicy) "だよ！" -ForegroundColor "Yellow"

#かわいい設定
function Prompt {
    if ($?) {
        Write-Host "(*'-')" -NoNewLine -ForegroundColor "Green"
        return "> "
    } else {
        Write-Host "(*;-;)" -NoNewLine -ForegroundColor "Red"
        return "> "
    }
}

#実行ポリシーの設定エイリアス
function set-ex{
    Set-ExecutionPolicy RemoteSigned -Scope process

    Write-Host "実行ポリシーは" (Get-ExecutionPolicy) "だよ！" -ForegroundColor "Yellow"
}