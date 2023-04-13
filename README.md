# Helps Me Clone Dotfiles

Clones from [this repo](https://github.com/jam1015/dotfiles) using techniques based on [this article](https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/)


to set up SSH on a new computer:

```
ssh-keygen -t ed25519 -C "jordan.mandel@live.com"
ssh-add ~/.ssh/id_ed25519
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
ssh -T git@github.com
```
