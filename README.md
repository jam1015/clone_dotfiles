# Helps Me Clone Dotfiles

Clones from [this other repo](https://github.com/jam1015/dotfiles) using techniques based on [this article](https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/). Implemented in the `clone_dotfiles.bash` script in this repo.

## to set up SSH on a new computer:


### On My Computer
check for the files `id_rsa.pub`, `id_ecdsa.pub`, `id_ed25519.pub` in `~/.ssh`.  If it is not there we will have to generate it.

```
ssh-keygen -t ed25519 -C "jordan.mandel@live.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

on a legacy system that doesnt's support the `Ed25519` algorithm I might have to use the command:
`ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`

### On Github

Go to `Settings` and then `SSH and GPG keys`. Click `New SSH Key` and copy the contents of the file `~/.ssh/id_ed25519.pub` (or the `.pub` file appropriate to the encryption algorithm used) to the file.  Give a descriptive title. Keep the 'authentication key' setting. I don't know how do deal with signing keys at this moment.


## if I forgot to clone using ssh rather than http
git remote -v # to view the current remotes
git remote set-url origin git@github.com:jam1015/dotfiles
```
