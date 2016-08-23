install:
	mkdir -pv /etc/{bash_completion.d,default,ld.so.conf.d,opt,profile.d,skel}
	mkdir -pv /usr/{include,lib/firmware,libexec/upm,share/{aclocal,bash-completion/completions},src}
	mkdir -pv /usr/local/{bin,include,lib/firmware,sbin,src}
	mkdir -pv /usr/{,local/}share/{color,dict,doc,info,locale,man,misc,terminfo,zoneinfo}
	mkdir -pv /usr/{,local/}share/man/man{1..8}
	mkdir -pv /var/lib/{color,misc,locate}
	for f in crypttab fstab hostname inputrc issue motd profile shells vconsole.conf; do \
		install -Dv -m 644 src/etc/$${f} /etc/$${f} ; \
	done
	for f in .bash_profile .bashrc .bash_logout; do \
		install -Dv -m 644 src/etc/skel/$${f} /etc/skel/$${f} ; \
	done
