# DelphiPatterns
This project should represent a complete set of all the [GoF design patterns](https://en.wikipedia.org/wiki/Design_Patterns) implemented in [Delphi](https://learndelphi.org/). 

Originally created by *Elector* and published to [delphipatterns.codeplex.com](https://web.archive.org/web/20170408044234/https://delphipatterns.codeplex.com/) <sub>(Archive link)</sub>, but is no longer available there.

Each pattern is implemented in seperate directory/project. The pattern is in the _*.pattern.pas_ file, while the example for it is in the _*.example.pas_ file.

## List of patterns
* **Behavioral** - Most behavioral design patterns are specifically concerned with communication between objects.
  * **[Chain of Responsibility](Behavioral/Behavioral.ChainOfResponsibility/Behavioral.ChainOfResponsibility.Pattern.pas)** [[Usage](Behavioral/Behavioral.ChainOfResponsibility/Behavioral.ChainOfResponsibility.Example.pas)] - delegates commands to a chain of processing objects.
  * **[Command](DelphiPatterns/blob/master/Behavioral/Behavioral.Command/Behavioral.Command.Pattern.pas)** [[Usage](Behavioral/Behavioral.Command/Behavioral.Command.Example.pas)] - creates objects that encapsulate actions and parameters.
  * **[Interpreter](Behavioral/Behavioral.Interpreter/Behavioral.Interpreter.Pattern.pas)** [[Usage](https://github.com/jimmckeeth/DelphiPatterns/blob/master/Behavioral/Behavioral.Interpreter/Behavioral.Interpreter.Example.pas)] - implements a specialized language.
  * **[Iterator](https://github.com/jimmckeeth/DelphiPatterns/blob/master/Behavioral/Behavioral.Iterator/Behavioral.Iterator.Pattern.pas)** [[Usage](https://github.com/jimmckeeth/DelphiPatterns/blob/master/Behavioral/Behavioral.Iterator/Behavioral.Iterator.Example.pas)] - accesses the elements of an object sequentially without exposing its underlying representation.
  * **[Mediator](https://github.com/jimmckeeth/DelphiPatterns/blob/master/Behavioral/Behavioral.Mediator/Behavioral.Mediator.Pattern.pas)** [[Usage](https://github.com/jimmckeeth/DelphiPatterns/blob/master/Behavioral/Behavioral.Mediator/Behavioral.Mediator.Example.pas)] - allows loose coupling between classes by being the only class that has detailed knowledge of their methods.
  * **[Memento](https://github.com/jimmckeeth/DelphiPatterns/blob/master/Behavioral/Behavioral.Memento/Behavioral.Memento.Pattern.pas)** [[Usage](https://github.com/jimmckeeth/DelphiPatterns/blob/master/Behavioral/Behavioral.Memento/Behavioral.Mediator.Example.pas)] - provides the ability to restore an object to its previous state (undo).
  * **[Observer](https://github.com/jimmckeeth/DelphiPatterns/blob/master/Behavioral/Behavioral.Observer/Behavioral.Observer.Pattern.pas)** [[Usage](https://github.com/jimmckeeth/DelphiPatterns/blob/master/Behavioral/Behavioral.Observer/Behavioral.Observer.Example.pas)] - a publish/subscribe pattern, which allows a number of observer objects to see an event.
  * **[State](https://github.com/jimmckeeth/DelphiPatterns/blob/master/Behavioral/Behavioral.State/Behavioral.State.Pattern.pas)** [[Usage](https://github.com/jimmckeeth/DelphiPatterns/blob/master/Behavioral/Behavioral.State/Behavioral.State.Example.pas)] - allows an object to alter its behavior when its internal state changes.
  * **[Strategy](https://github.com/jimmckeeth/DelphiPatterns/blob/master/Behavioral/Behavoral.Strategy/Behavioral.Strategy.Pattern.pas)** [[Usage](https://github.com/jimmckeeth/DelphiPatterns/blob/master/Behavioral/Behavoral.Strategy/Behavioral.Strategy.Example.pas)] - allows one of a family of algorithms to be selected on-the-fly at runtime.
  * **[Template Method](https://github.com/jimmckeeth/DelphiPatterns/blob/master/Behavioral/Behavioral.TemplateMethod/Behavioral.TemplateMethod.Pattern.pas)** [[Usage](https://github.com/jimmckeeth/DelphiPatterns/blob/master/Behavioral/Behavioral.TemplateMethod/Behavioral.TemplateMethod.Example.pas)] - defines the skeleton of an algorithm as an abstract class, allowing its subclasses to provide concrete behavior.
  * **[Visitor](https://github.com/jimmckeeth/DelphiPatterns/blob/master/Behavioral/Behavioral.Visitor/Behavioral.Visitor.Pattern.pas)** [[Usage](https://github.com/jimmckeeth/DelphiPatterns/blob/master/Behavioral/Behavioral.Visitor/Behavioral.Visitor.Example.pas)] - separates an algorithm from an object structure by moving the hierarchy of methods into one object.
   
* **Creational** - Patterns that create objects, rather than having to instantiate objects directly. This gives the program more flexibility in deciding which objects need to be created for a given case.
  * **Abstract Factory** [Usage] - groups object factories that have a common theme.
  * **Builder** [Usage] - constructs complex objects by separating construction and representation.
  * **Factory Method** [Usage] - creates objects without specifying the exact class to create.
  * **Prototype** [Usage] - creates objects by cloning an existing object.
  * **Singleton** [Usage] - restricts object creation for a class to only one instance.
   
* **Structural** - concern class and object composition. They use inheritance to compose interfaces and define ways to compose objects to obtain new functionality.
  * **Adapter** [Usage] - allows classes with incompatible interfaces to work together by wrapping its own interface around that of an already existing class.
  * **Bridge** [Usage] - decouples an abstraction from its implementation so that the two can vary independently.
  * **Composite** [Usage] - composes zero-or-more similar objects so that they can be manipulated as one object.
  * **Decorator** [Usage] - dynamically adds/overrides behavior in an existing method of an object.
  * **Facade** [Usage] - provides a simplified interface to a large body of code.
  * **Flyweight** [Usage] - reduces the cost of creating and manipulating a large number of similar objects.
  * **Proxy** [Usage] - provides a placeholder for another object to control access, reduce cost, and reduce complexity.

#License

The license is stil Common Development and Distribution License (CDDL), the same as the original implementation.
