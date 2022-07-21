# Go to Dir
$path= [Environment]::GetFolderPath("MyDocuments") + "\Git-Repos\Dotfiles"
cd $path
# Fetch and Pull from Git
git fetch
git pull
# Copy dotfiles to config directory
Robocopy C:\Users\jkagiwada\Documents\Git-Repos\Dotfiles\nvim  C:\Users\jkagiwada\AppData\Local\nvim /MIR /FFT /Z /XA:H /W:5

pause
