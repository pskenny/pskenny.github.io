---
layout: post
title: "Fullscreen Terminal Windows In Lanterna"
---

[Lanterna](https://github.com/mabe02/lanterna) is an easy way to make text only user interfaces in Java that I highly recommend. 

One thing that took me too long to find was how to make a window fullscreen. Add:

```java
yourWindow.setHints(java.util.Collections.singleton(Window.Hint.FULL_SCREEN));
```

Here's it in a minimal example:

```java
import java.io.IOException;
import com.googlecode.lanterna.gui2.*;
import com.googlecode.lanterna.screen.*;
import com.googlecode.lanterna.terminal.*;

public class TUI {

    public static void main(String[] args) {
        MultiWindowTextGUI gui;
        Screen screen;
        BasicWindow window;

        try (Terminal terminal = new DefaultTerminalFactory().createTerminal()) {
            screen = new TerminalScreen(terminal);
            screen.startScreen();

            gui = new MultiWindowTextGUI(screen);

            window = new BasicWindow();
            window.setComponent(new Label("Hello, fullscreen!"));
            // Set window to use fullscreen hint
            window.setHints(java.util.Collections.singleton(Window.Hint.FULL_SCREEN));
            

            gui.addWindowAndWait(window);
        } catch (IOException ex) {
        }
    }
}

```

_Note:_ There are other hints you can use in `Window.Hint` you can use. Put them in a collection and pass them to the `setHints` method. I like `Window.Hint.NO_DECORATIONS`.

_Note: Note:_ As told in the documentation, _"Please note that it's up to the window manager if these hints will be honored or not."_

## Resources

- [Github repo](https://github.com/mabe02/lanterna)
- [Maven repo](https://mvnrepository.com/artifact/com.googlecode.lanterna/lanterna)
- [Official docs](https://github.com/mabe02/lanterna/tree/master/docs)
- [Official tutorial](https://github.com/mabe02/lanterna/blob/master/docs/tutorial/Tutorial01.md)
