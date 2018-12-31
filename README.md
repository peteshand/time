## Overview

This is a simple helper library to add enterFrame listeners via a static class "EnterFrame". The following methods are available, add, addAt, remove

### .add

To trigger a callback every frame simple call the .add method with a Void -> Void function.

```
EnterFrame.add(() -> {
	// do something each frame
});
```

You can also set the priority by calling .addAt and passing an Int as the last param that defines where to insert the callback (lower numbers will be triggered first)

### .addAt
```
EnterFrame.addAt(() -> {
	// do something each frame
}, 0);
```

To remove a callback simple call the .remove method.

### .remove
```
EnterFrame.add(update);

function update()
{
	// do something and then remove listener
	EnterFrame.remove(update);
}
```

### Internals

The internal ticking mechanism works slightly differently depending on if OpenFL is being used or not. If OpenFL is being used then the tick will be tied into the stage's EnterFrame event. If OpenFL is not being used then a 60 fps haxe timer will be used to trigger the tick;.