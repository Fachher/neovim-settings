# NeoVIM Settings + Plugins

All plugins have been found at (http://vimawesome.com)

## Plugins
* autopairs (automatically close brackets)
* vim-multicursor
* vim-surround (surround word or selection)
* nerdcommenter (commend or uncomment code depending on language)
* nerdtree (file navigation)
* ctrlp (Full path fuzzy file, buffer, mru, tag, ... finder for Vim)
* rustvim (Rust syntax highlightning)
* supertab (Autocomplete already written words by TAB)
* ansiblevim (Syntax highlightning)

## Cheat sheet

### vim-surround

1. Surround word under cursor by quotes => ysiw"
2. Surround word under cursor by tag => ysiwt<div>
3. Surround selection by quotes => S"
4. Surround selection by tag => St<div>
4. Change surrounding ' by " => cs'"

## Hints

For better typing enable also 
Keyboard -> Key Repeat[short] and Delay[short] until repeat<Paste>

Reformat xml visual selected
:'<,'>!xmllint --format -

Reads a dump of file sample.bin, formatted as C source
:r !xxd -i sample.bin


# Requirement
`brew install neovim`
`brew install the_silver_searcher`
`brew install ctags`
`pip3 install --user neovim`
`pip3 install --user jsbeautifier`
`pip3 install --user requests`
`pip3 install --user css-beautify`
`pip3 install --user six`
