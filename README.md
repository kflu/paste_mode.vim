This plugin allows you to enter insert mode in paste setting (`set paste`).
And upon leaving insert mode, restore previous paste setting, ie., if it was
disabled before, it will be disabled again.

By default, there is no key mapping or command enabled by default. You can put
the following in the .vimrc:

    command P call paste_mode#PasteInsert()

