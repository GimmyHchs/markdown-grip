# Markdown-Grip layer
![](screenshot/demo.gif)
<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [Markdown-Grip layer](#markdown-grip-layer)
- [Description](#description)
- [Installation](#installation)
- [Usage](#usage)
    - [Run live-preview](#run-live-preview)
    - [Kill the grip process](#kill-the-grip-process)

<!-- markdown-toc end -->
- - -
# Description

This layer adds spacemacs support **joeyespo/grip** in markdown-mode.

- [joeyespo/grip](https://github.com/joeyespo/grip) Render local readme files before sending off to GitHub.

# Installation

You must install **grip** first.

To install grip
```
$ pip install grip
```

On OS X
```
$ brew install grip
```

Clone this repository
```
$ git clone https://github.com/GimmyHchs/markdown-grip.git
```

Append config to `~/.spacemacs` in `dotspacemacs/user-config()`
```
(defun dotspacemacs/user-config ()
  (use-package markdown-grip
    :load-path "~/path/to/folder/markdown-grip")
    
    ;; other configure ...
```

Restart spacemacs 
<kbd>SPC q r</kbd>

# Usage

## Run live-preview
- in **markdown-mode** press <kbd>, p p</kbd>
- or you can call markdown-preview-grip command
```
M-x markdown-preview-grip
```
the browser will start automatically. and rerender the page if you modify and save the markdown file


## Kill the grip process
- in **markdown-mode** press <kbd>, p k</kbd>
- or you can call kill-markdown-preview-process command
```
M-x kill-markdown-preview-process
```
