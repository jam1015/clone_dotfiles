# Helps Me Clone Dotfiles

Clones from [this repo](https://github.com/jam1015/dotfiles) using techniques based on [this article](https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/). Implemented in the `clone_dotfiles.bash` script in this repo.

to set up SSH on a new computer:

```
ssh-keygen -t ed25519 -C "jordan.mandel@live.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
ssh -T git@github.com
# if I forgot to clone using ssh rather than http
git remote -v # to view the current remotes
git remote set-url origin git@github.com:jam1015/dotfiles
```

