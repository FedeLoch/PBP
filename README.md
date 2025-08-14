# Bytecode Profiler

Our `BytecodeProfiler` is implemented by using the Pharo debugger interpreter. This means that we are in charge of executing step by step the current context, notifying our `InstructionClient` to handle the current bytecode event.

By definition, implement the bytecode profiler since the Pharo image adds overhead, and therefore, it is more expensive than a VM Interpreter bytecode profiler. Our long-term objective is to implement it on the VM side.

## Getting started

To install the profiler, you must execute this Metacello script in your playground or add the project as a dependency.

```Smalltalk
Metacello new
    baseline: 'PBP';
    repository: 'github://FedeLoch/PBP:main';
    load
```

Running the Bytecode profiler is easy. It only needs to receive a `Context`. Then the profiler will execute and collect all the information about its execution.

```Smalltalk
    BytecodeProfiler profile: ([ { 1. 2. 3.4 } at: 2 ] asContext) "-> a Dictionary(
        'avgArguments'->1.0
        'differentCallSites'->1
        'differentExecutedBlocks'->0
        'differentExecutedBytecodes'->6
        'differentMethodsCalled'->1
        'instanceVariableAccesses'->0
        'staticVariableAccesses'->0
        'totalExecutedBlocks'->0
        'totalExecutedBytecodes'->7
        'totalExecutedLoops'->0
        'totalMethodsCalled'->1
    "
```
