export TERMINAL=kitty
export MOZ_ENABLE_WAYLAND=1

export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export GO111MODULE=auto
export GOSUMDB=off
export GOPROXY=direct

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export VISUAL="vim"

case "$TERM" in
     'xterm') TERM=xterm-256color;;
     'screen') TERM=screen-256color;;
     'Eterm') TERM=Eterm-256color;;
esac

export QT_STYLE_OVERRIDE=gtk 
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"

export MOZ_WEBRENDER=1
export MOZ_X11_EGL=1

#export CONSUL_HTTP_ADDR=10.254.11.96:8500
export CONSUL_HTTP_ADDR=10.254.10.24:8500
export DEBUG=aurum:*

export TERM=xterm-256color

export PYTHONPATH=$PYTHONPATH:.
