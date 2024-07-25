# DelphiPatterns
This project should represent a complete set of all the [GoF design patterns](https://en.wikipedia.org/wiki/Design_Patterns) implemented in [Delphi](https://learndelphi.org/). 

Originally created by *Elector* and published to [delphipatterns.codeplex.com](https://web.archive.org/web/20170408044234/https://delphipatterns.codeplex.com/) <sub>(Archive link)</sub>, but is no longer available there.

Each pattern is implemented in seperate directory/project. The pattern is in the _.pas_ file, while the example for it is in the _.dpr_.

## List of patterns
* **Behavioral** - Most behavioral design patterns are specifically concerned with communication between objects.
  * Chain of Responsibility - delegates commands to a chain of processing objects.
  * Command - creates objects that encapsulate actions and parameters.
  * Interpreter - implements a specialized language.
  * Iterator - accesses the elements of an object sequentially without exposing its underlying representation.
  * Mediator - allows loose coupling between classes by being the only class that has detailed knowledge of their methods.
  * Memento - provides the ability to restore an object to its previous state (undo).
  * Observer - a publish/subscribe pattern, which allows a number of observer objects to see an event.
  * State - allows an object to alter its behavior when its internal state changes.
  * Strategy - allows one of a family of algorithms to be selected on-the-fly at runtime.
  * Template Method - defines the skeleton of an algorithm as an abstract class, allowing its subclasses to provide concrete behavior.
  * Visitor - separates an algorithm from an object structure by moving the hierarchy of methods into one object.
* **Creational**
  * Abstract Factory
  * Builder
  * Factory Method
  * Prototype
  * Singleton
* **Structural**
  * Adapter
  * Bridge
  * Composite
  * Decorator
  * Facade
  * Flyweight
  * Proxy

#License

The license is stil Common Development and Distribution License (CDDL), the same as the original implementation.
