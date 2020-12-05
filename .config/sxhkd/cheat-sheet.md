# NORMAL MODE

## Workspace control
alt + {h,l} 
    focus adjacent workspace

alt + shift + {h,l}
    send to adjacent workspace

alt + control + {h,l}
    send and follow to adjacent workspace

alt + a
    focus first empty workspace

alt + shift + a
    send node to first empty workspace

alt + ctrl + a
    send note to first empty workspace and follow

## Node control
alt + {j,k}
    focus nodes up/down the tree

alt + shift + {j,k}
    swap node up/down the tree

alt + q
    flash focused node

alt + shift + q
    kill node

## Layout control
alt + shift + b
    toggle bar

alt + shift + Return
    swap biggest node with the focused node

alt + t
    set tiled

alt + shift + t
    set pseudo tiled

alt + space
    set floating (and enter layout mode)

alt + f
    enter fullscreen

## Presel control
alt + shift + ctrl + {h,j,k,l}
    preselection in given direction

alt + shift + space
    move current node into pre-selected area

## Application shortcuts
alt + d
    dmenu

alt + Return
    terminal

alt + Tab
    window switcher

alt + {o,p}
    display system information and current song

alt + shift + d
    menu for choosing and editing dotfiles

alt + c
    menu for accessing various shortcuts

alt + shift + p
    passmenu

alt + w
    wifi menu

alt + minus
    toggle scratchpad (todo list)

## Modes
alt + e
    enter application mode

alt + r
    enter layout mode

alt + s
    enter system mode

## sxhkd
alt + shift + Escape
    restart sxhkd 

# APPLICATION MODE (TODO: use alt for these as well? allow regular typing?) (alt + e)
b
    browser

enter
    browser

r
    newsboat

e 
    ranger

y
    mpvplay

g
    gimp

i
    intellij idea

k
    xkill

shift + b
    toggle bar



Escape
    enter normal mode

(TODO: combine with basic navigation?)


# SYSTEM MODE (alt + s)
alt + x
    lock

alt + q
    shutdownmenu

alt + control + q
    quit bspwm

alt + control + r 
    restart bspwm

alt + m
    mount menu

alt + shift + mount
    umount menu

alt + w
    wifi menu

Escape
    enter normal mode

# LAYOUT MODE (alt + m) (with basic control)
shift + m
    mark node

shift + l
    lock node

shift + s
    set sticky

shift + p
    set private

{comma,period} (+ control)
    increase/decrease window gap (or reset)

shift + {comma,period} {+ control}
    increase/decrease padding (or reset)

m ; {h,j,k,l}
    balance node tree in given direction

m ; b
    balance all nodes

{j,k}
    change focus

{h,l}
    change workspace

shift + {h,j,k,l}
    move a tiled or floating node (up/down the tree or to another workspace)

control + {h,j,k,l}
    resize a tiled or floating node

d ; {h,j,k,l}
    double or halv the dimensions of a floating node

control + shift + {h,j,k,l}
    make preselection

shift + space
    move focused node into preselection

space
    toggle floating

enter
    swap biggest and focused node

Escape
    enter normal mode
