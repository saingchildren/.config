# install nerd font

> https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack

# install scoop

> https://scoop.sh/
```script
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
irm get.scoop.sh | iex
```
> install neovim

```script
scoop install neovim
```

# set profile path

```script
nvim $PROFILE

# 確認檔案路徑，如果沒有該檔案的資料夾需要創建
```
> 檔案中寫入
> \$env:$USERPROFILE\.config\powershell\user_profile.ps1

# set profile content

> ### .config\powershell\user_profile.ps1
> #### Set-Alias -Name vim -Value nvim
