module.exports =
  deactivate: ->
    @toolBar?.removeItems()

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'tool-bar-atom-md'

    @toolBar.addButton
      'icon': 'file-o'
      'callback': 'application:new-file'
      'tooltip': 'New File'
      'iconset': 'fa'

    @toolBar.addButton
      'icon': 'file-text'
      'callback': 'application:open-file'
      'tooltip': 'Open File'
      'iconset': 'fa'

    @toolBar.addButton
      'icon': 'folder-open'
      'callback': 'application:open-folder'
      'tooltip': 'Open Folder'
      'iconset': 'fa'

    @toolBar.addButton
      'icon': 'floppy-o'
      'callback': 'core:save'
      'tooltip': 'Save File'
      'iconset': 'fa'

    if atom.packages.loadedPackages['project-viewer']
      @toolBar.addButton
        'icon': 'file-submodule'
        'tooltip': 'List projects'
        'callback': 'project-viewer:togglePanel'

    @toolBar.addSpacer()

    @toolBar.addButton
      'icon': 'undo'
      'callback': 'core:undo'
      'tooltip': 'Undo'
      'iconset': 'fa'

    @toolBar.addButton
      'icon': 'repeat'
      'callback': 'core:redo'
      'tooltip': 'Redo'
      'iconset': 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
      'icon': 'columns'
      'iconset': 'fa'
      'tooltip': 'Split screen - Horizontally'
      'callback': 'pane:split-right'

    btn = @toolBar.addButton
      'icon': 'columns'
      'iconset': 'fa'
      'tooltip': 'Split screen - Vertically'
      'callback': 'pane:split-down'
    btn.element.classList.add 'fa-rotate-270'

    @toolBar.addSpacer()

    @toolBar.addButton
      'iconset': 'fa'
      'icon': 'arrows-alt'
      'tooltip': 'Toggle Fullscreen'
      'callback': 'window:toggle-full-screen'

    @toolBar.addButton
      'icon': 'sitemap'
      'callback': 'tree-view:toggle'
      'tooltip': 'Toggle Sidebar'
      'iconset': 'fa'

    if atom.packages.loadedPackages['minimap']
      @toolBar.addButton
        'icon': 'map-o'
        'tooltip': 'Toggle Minimap'
        'callback': 'minimap:toggle'
        'iconset': 'fa'

    if atom.packages.loadedPackages['expose']
      @toolBar.addButton
        'icon': 'browser'
        'tooltip': 'Toggle Exposé'
        'callback': 'expose:toggle'

    @toolBar.addSpacer()

    @toolBar.addButton
      'icon': 'indent'
      'callback': 'editor:auto-indent'
      'tooltip': 'Auto indent (selection)'
      'iconset': 'fa'

    @toolBar.addButton
      'icon': 'level-up'
      'callback': 'editor:fold-all'
      'tooltip': 'Fold all'
      'iconset': 'fa'

    @toolBar.addButton
      'icon': 'level-down'
      'callback': 'editor:unfold-all'
      'tooltip': 'Unfold all'
      'iconset': 'fa'

    if atom.packages.loadedPackages['atom-beautify']
      @toolBar.addButton
        'icon': 'flower'
        'callback': 'atom-beautify:beautify-editor'
        'tooltip': 'Beautify'
        'iconset': 'mdi'
      @toolBar.addSpacer()

    @toolBar.addButton
      'icon': 'search'
      'callback': 'find-and-replace:show'
      'tooltip': 'Find...'
      'iconset': 'icomoon'

    @toolBar.addButton
      'icon': 'search-plus'
      'callback': 'find-and-replace:show-replace'
      'tooltip': 'Find and Replace...'
      'iconset': 'fa'

    if atom.packages.loadedPackages['console-panel']
      @toolBar.addSpacer()
      @toolBar.addButton
        'icon': 'list-alt'
        'callback': 'console:toggle'
        'tooltip': 'Toggle Console'
        'iconset': 'fa'

    if atom.packages.loadedPackages['term3']
      @toolBar.addSpacer()
      @toolBar.addButton
        'icon': 'terminal'
        'callback': 'term3:open-split-down'
        'tooltip': 'Term3 Split Down'

    else if atom.packages.loadedPackages['term2']
      @toolBar.addButton
        'icon': 'terminal'
        'callback': 'term2:open-split-down'
        'tooltip': 'Term2 Split Down'

    else if atom.packages.loadedPackages['terminal-plus']
      @toolBar.addButton
        'icon': 'terminal'
        'callback': 'terminal-plus:toggle'
        'tooltip': 'Toggle Terminal-plus'

    else if atom.packages.loadedPackages['platformio-ide-terminal']
      @toolBar.addButton
        'icon': 'terminal'
        'callback': 'platformio-ide-terminal:toggle'
        'tooltip': 'Toggle Platformio-ide-terminal'

    @toolBar.addButton
      'icon': 'refresh'
      'callback': 'window:reload'
      'tooltip': 'Reload Window'
      'iconset': 'fa'

    @toolBar.addButton
      'icon': 'bug'
      'callback': 'window:toggle-dev-tools'
      'tooltip': 'Toggle Developer Tools'

    @toolBar.addButton
      'icon' : 'git-plain'
      'callback' : 'github:toggle-git-tab'
      'tooltip' : 'Toggle Git Tab'
      'iconset' : 'devicon'

    if atom.packages.loadedPackages['script']
      @toolBar.addSpacer()
      @toolBar.addButton
        'icon': 'play'
        'callback': 'script:run'
        'tooltip': 'Run script'
        'iconset': 'fa'

      @toolBar.addButton
        'icon': 'fast-forward'
        'callback': 'script:run-by-line-number'
        'tooltip': 'Run by Line Number'
        'iconset': 'fa'

      @toolBar.addButton
        'icon': 'stop'
        'callback': 'script:kill-process'
        'tooltip': 'Stop script'
        'iconset': 'fa'

      @toolBar.addButton
        'icon': 'gear'
        'callback': 'script:run-options'
        'tooltip': 'Configure script'
        'iconset': 'fa'

    @toolBar.addSpacer()

    if atom.packages.loadedPackages['atom-live-server']
      @toolBar.addButton
        'icon': 'chrome'
        'callback': 'atom-live-server:start-3000'
        'tooltip': 'Run localhost on port 3000...'
        'iconset': 'icomoon'

      @toolBar.addButton
        'icon': 'cancel-circle'
        'callback': 'atom-live-server:stopServer'
        'tooltip': 'Stop localhost on port 3000...'
        'iconset': 'icomoon'

    @toolBar.addSpacer()

    @toolBar.addButton
      'icon': 'navicon-round'
      'callback': 'command-palette:toggle'
      'tooltip': 'Toggle Command Palette'
      'iconset': 'ion'

    @toolBar.addButton
      'icon': 'gear'
      'callback': 'settings-view:open'
      'tooltip': 'Open Settings View'
