function! DisplayImage()
  let s:image = get(g:, "open#image", '')
  if executable(s:image)
     execute "!" . s:image . " %" | :bw | :wincmd h
  else
    echom 'Program to open images not found'
  endif
endfunction

function! DisplayPDF()
  let s:pdf = get(g:, "open#pdf", '')
  if executable(s:pdf)
    execute "!" . s:pdf . " %" | :bw | :wincmd h
  else
    echom 'Program to open pdfs not found'
  endif
endfunction

function! DisplayVideo()
  let s:video = get(g:, "open#video", '')
  if executable(s:video)
    execute "!" . s:video . " %" | :bw | :wincmd h
  else
    echom 'Program to open videos not found'
  endif
endfunction

function! DisplayAudio()
  let s:audio = get(g:, "open#audio", '')
  if executable(s:audio)
    execute "!" . s:audio . " %" | :bw | :wincmd h
  else
    echom 'Program to open audios not found'
  endif
endfunction

autocmd BufRead *.png,*.jpg,*.jpeg,*.webp :call DisplayImage()
autocmd BufRead *.pdf :call DisplayPDF()
autocmd BufRead *.mp4,*.avi,*.gif,*.flv :call DisplayVideo()
autocmd BufRead *.mp3,*.wav,*.ogg :call DisplayAudio()
