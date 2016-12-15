# service-completion
bash completion for service command from FreeBSD

### What does it do?
This script adds completion for services and their subcommands to the service command from FreeBSD.

### Installation
* copy the file service.sh to /usr/local/etc/bash_completion.d directory of your FreeBSD installation
* add follwing code to your .profile file
```bash
for f in /usr/local/etc/bash_completion.d/*; do
    . $f
done
```

### Usage
Enter a service name or a part and push [TAB] to complete the service name. Push [TAB] twice to get a list of all services.
Enter a command or a part and push [TAB] to complete it. Push [TAB] twice to get a list of all subcommands that are available for this service.
