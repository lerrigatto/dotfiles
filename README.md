# Other confs

## Lightdm

```bash
echo "background=/usr/share/images/backgrounds/parmitano.jpg" | sudo tee -a /etc/lightdm/lightdm-gtk-greeter.conf
```


## Background img (from ESA):

```bash
mkdir -p /usr/share/images/backgrounds
curl -o /usr/share/images/backgrounds/parmitano.jpg https://www.esa.int/var/esa/storage/images/esa_multimedia/images/2013/07/columbus_is_visible_in_the_reflection/12941691-4-eng-GB/Columbus_is_visible_in_the_reflection.jpg
```

## Fish

Omf:
```
curl -L https://get.oh-my.fish | fish
```

Staship:
```
curl -fsSL https://starship.rs/install.sh | bash
```
