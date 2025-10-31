# DelphiPatterns

This project should represent a complete set of all the [GoF design patterns](https://en.wikipedia.org/wiki/Design_Patterns) implemented in [Delphi](https://learndelphi.org/).

Originally created by *Elector* and published to [delphipatterns.codeplex.com](https://web.archive.org/web/20170408044234/https://delphipatterns.codeplex.com/) <sub>(Archive link)</sub>, but is no longer available there.

Each pattern is implemented in separate directory & project. The pattern is in the`*.pattern.pas` file, while the example is in the `*.example.pas` file.

## List of Patterns

Each included pattern, links to the files, and a short description. Read more on [Wikipedia](https://en.wikipedia.org/wiki/Software_design_pattern).

### [Behavioral Patterns](https://en.wikipedia.org/wiki/Behavioral_patterns)

Most behavioral design patterns are specifically concerned with communication between objects.

* **[Chain of Responsibility](Behavioral/Behavioral.ChainOfResponsibility/Behavioral.ChainOfResponsibility.Pattern.pas)** [[Usage](Behavioral/Behavioral.ChainOfResponsibility/Behavioral.ChainOfResponsibility.Example.pas)] - delegates commands to a chain of processing objects. [[more info](https://en.wikipedia.org/wiki/Chain-of-responsibility_pattern)]
* **[Command](/Behavioral/Behavioral.Command/Behavioral.Command.Pattern.pas)** [[Usage](Behavioral/Behavioral.Command/Behavioral.Command.Example.pas)] - creates objects that encapsulate actions and parameters. [[more info](https://en.wikipedia.org/wiki/Command_pattern)]
* **[Interpreter](Behavioral/Behavioral.Interpreter/Behavioral.Interpreter.Pattern.pas)** [[Usage](Behavioral/Behavioral.Interpreter/Behavioral.Interpreter.Example.pas)] - implements a specialized language. [[more info](https://en.wikipedia.org/wiki/Interpreter_pattern)]
* **[Iterator](Behavioral/Behavioral.Iterator/Behavioral.Iterator.Pattern.pas)** [[Usage](Behavioral/Behavioral.Iterator/Behavioral.Iterator.Example.pas)] - accesses the elements of an object sequentially without exposing its underlying representation. [[more info](https://en.wikipedia.org/wiki/Iterator_pattern)]
* **[Mediator](Behavioral/Behavioral.Mediator/Behavioral.Mediator.Pattern.pas)** [[Usage](Behavioral/Behavioral.Mediator/Behavioral.Mediator.Example.pas)] - allows loose coupling between classes by being the only class that has detailed knowledge of their methods. [[more info](https://en.wikipedia.org/wiki/Mediator_pattern)]
* **[Memento](Behavioral/Behavioral.Memento/Behavioral.Memento.Pattern.pas)** [[Usage](Behavioral/Behavioral.Memento/Behavioral.Mediator.Example.pas)] - provides the ability to restore an object to its previous state (undo). [[more info](https://en.wikipedia.org/wiki/Memento_pattern)]
* **[Observer](Behavioral/Behavioral.Observer/Behavioral.Observer.Pattern.pas)** [[Usage](Behavioral/Behavioral.Observer/Behavioral.Observer.Example.pas)] - a publish/subscribe pattern, which allows a number of observer objects to see an event. [[more info](https://en.wikipedia.org/wiki/Observer_pattern)]
* **[State](Behavioral/Behavioral.State/Behavioral.State.Pattern.pas)** [[Usage](Behavioral/Behavioral.State/Behavioral.State.Example.pas)] - allows an object to alter its behavior when its internal state changes. [[more info](https://en.wikipedia.org/wiki/State_pattern)]
* **[Strategy](Behavioral/Behavoral.Strategy/Behavioral.Strategy.Pattern.pas)** [[Usage](Behavioral/Behavoral.Strategy/Behavioral.Strategy.Example.pas)] - allows one of a family of algorithms to be selected on-the-fly at runtime. [[more info](https://en.wikipedia.org/wiki/Strategy_pattern)]
* **[Template Method](Behavioral/Behavioral.TemplateMethod/Behavioral.TemplateMethod.Pattern.pas)** [[Usage](Behavioral/Behavioral.TemplateMethod/Behavioral.TemplateMethod.Example.pas)] - defines the skeleton of an algorithm as an abstract class, allowing its subclasses to provide concrete behavior. [[more info](https://en.wikipedia.org/wiki/Template_method_pattern)]
* **[Visitor](Behavioral/Behavioral.Visitor/Behavioral.Visitor.Pattern.pas)** [[Usage](Behavioral/Behavioral.Visitor/Behavioral.Visitor.Example.pas)] - separates an algorithm from an object structure by moving the hierarchy of methods into one object. [[more info](https://en.wikipedia.org/wiki/Visitor_pattern)]
  
### [Creational Patterns](https://en.wikipedia.org/wiki/Creational_patterns)

  Patterns that create objects, rather than having to instantiate objects directly. This gives the program more flexibility in deciding which objects need to be created for a given case.

* **[Abstract Factory](Creational/Creational.AbstractFactory/Creational.AbstractFactory.Pattern.pas)** [[Usage](Creational/Creational.AbstractFactory/Creational.AbstractFactory.Example.pas)] - groups object factories that have a common theme. [[more info](https://en.wikipedia.org/wiki/Abstract_factory_pattern)]
* **[Builder](Creational/Creational.Builder/Creational.Builder.Pattern.pas)** [[Usage](Creational/Creational.Builder/Creational.Builder.Example.pas)] - constructs complex objects by separating construction and representation. [[more info](https://en.wikipedia.org/wiki/Builder_pattern)]
* **[Factory Method](Creational/Creational.FactoryMethod/Creational.FactoryMethod.Pattern.pas)** [[Usage](Creational/Creational.FactoryMethod/Creational.FactoryMethod.Example.pas)] - creates objects without specifying the exact class to create. [[more info](https://en.wikipedia.org/wiki/Factory_method_pattern)]
* **[Singleton](Creational/Creational.Singleton/Creational.Singleton.Pattern.pas)** [[Usage](Creational/Creational.Singleton/Creational.Singleton.Example.pas)] - restricts object creation for a class to only one instance. [[more info](https://en.wikipedia.org/wiki/Singleton_pattern)]
  
### [Structural Patterns](https://en.wikipedia.org/wiki/Structural_pattern)

Patterns that concern class and object composition. They use inheritance to compose interfaces and define ways to compose objects to obtain new functionality.
  
* **[Adapter](Structural/Structural.Adapter/Structural.Adapter.Pattern.pas)** [[Usage](Structural/Structural.Adapter/Structural.Adapter.Example.pas)] - allows classes with incompatible interfaces to work together by wrapping its own interface around that of an already existing class. [[more info](https://en.wikipedia.org/wiki/Adapter_pattern)]
* **[Bridge](Structural/Structural.Bridge/Structural.Bridge.Pattern.pas)** [[Usage](Structural/Structural.Bridge/Structural.Bridge.Example.pas)] - decouples an abstraction from its implementation so that the two can vary independently. [[more info](https://en.wikipedia.org/wiki/Bridge_pattern)]
* **[Composite](Structural/Structural.Composite/Structural.Composite.Pattern.pas)** [[Usage](Structural/Structural.Composite/Structural.Composite.Example.pas)] - composes zero-or-more similar objects so that they can be manipulated as one object. [[more info](https://en.wikipedia.org/wiki/Composite_pattern)]
* **[Decorator](Structural/Structural.Decorator/Structural.Decorator.Pattern.pas)** [[Usage](Structural/Structural.Decorator/Structural.Decorator.Example.pas)] - dynamically adds/overrides behavior in an existing method of an object. [[more info](https://en.wikipedia.org/wiki/Decorator_pattern)]
* **[Facade](Structural/Structural.Facade/Structural.Facade.Pattern.pas)** [[Usage](Structural/Structural.Facade/Structural.Facade.Example.pas)] - provides a simplified interface to a large body of code. [[more info](https://en.wikipedia.org/wiki/Facade_pattern)]
* **[Proxy](Structural/Structural.Proxy/Structural.Proxy.Pattern.pas)** [[Usage](Structural/Structural.Proxy/Structural.Proxy.Example.pas)] - provides a placeholder for another object to control access, reduce cost, and reduce complexity. [[more info](https://en.wikipedia.org/wiki/Proxy_pattern)]

### ToDo

* **Creational**
  * **[Prototype](Creational/Creational.Prototype/Creational.Prototype.Pattern.pas)** *Implementation missing* - creates objects by cloning an existing object. [[more info](https://en.wikipedia.org/wiki/Prototype_pattern)]
  * **[Dependency Injection](https://en.wikipedia.org/wiki/Dependency_injection)** - class accepting the objects it requires from an injector instead of creating the objects directly.
  * **[Lazy initialization](https://en.wikipedia.org/wiki/Lazy_initialization)** (aka Virtual Proxy) delaying the creation of an object, the calculation of a value, or some other expensive process until the first time it is needed.
  * **[Multiton](https://en.wikipedia.org/wiki/Multiton)** Ensure a class has only named instances, and provide a global point of access to them.
  * **[Object pool](https://en.wikipedia.org/wiki/Object_pool)** Avoid expensive acquisition and release of resources by recycling objects that are no longer in use.
* **Structural**
  * **[Delegation](https://en.wikipedia.org/wiki/Delegation_pattern)** - 	Extend a class by composition instead of subclassing. The object handles a request by delegating to a second object (the delegate)
  * **[Flyweight](Structural/Structural.Flyweight/Structural.Flyweight.Pattern.pas)** *Implementation missing* - reduces the cost of creating and manipulating a large number of similar objects. [[more info](https://en.wikipedia.org/wiki/Flyweight_pattern)]
* ***Other***
  * *Many more...*

## License

The license is still [Common Development and Distribution License (CDDL)](https://github.com/jimmckeeth/DelphiPatterns/blob/master/LICENSE.md), the same as the original implementation. According to [FOSSA](https://fossa.com/blog/open-source-licenses-101-cddl-common-development-distribution-license/) it has similar provisions to the Mozilla Public License 2.0 and the Eclipse Public License.
