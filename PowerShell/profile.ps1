
#�J�n�������ꏊ
Set-Location C:\work\powerShell�e�X�g

Write-Host "���s�|���V�[��" (Get-ExecutionPolicy) "����I" -ForegroundColor "Yellow"

#���킢���ݒ�
function Prompt {
    if ($?) {
        Write-Host "(*'-')" -NoNewLine -ForegroundColor "Green"
        return "> "
    } else {
        Write-Host "(*;-;)" -NoNewLine -ForegroundColor "Red"
        return "> "
    }
}

#���s�|���V�[�̐ݒ�G�C���A�X
function set-ex{
    Set-ExecutionPolicy RemoteSigned -Scope process

    Write-Host "���s�|���V�[��" (Get-ExecutionPolicy) "����I" -ForegroundColor "Yellow"
}