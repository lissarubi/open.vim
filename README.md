# Open.vim

Open.vim is a plugin to open media files (images, videos, audios, pdf's,etc.) using Vim.

# Install

Use your favorite Vim Plugin manager, A example with Vim Plug:

## Plug

```
call plug#begin()

Plug 'edersonferreira/open.vim'

call plug#end()
```

# Configuration

To configure Open.vim, you need to define the programs to open the media files:

```
let g:open#image = ''
let g:open#pdf = ''
let g:open#video = ''
let g:open#audio = ''
```

An example of configuration, using `sxiv` to open images, `zathura` to open pdf's, and `celluloid` to open videos and images:

```
let g:open#image = 'sxiv'
let g:open#pdf = 'zathura'
let g:open#video = 'celluloid'
let g:open#audio = 'celluloid'
```

Now, if you open a image, this image will be open with your selected program.
