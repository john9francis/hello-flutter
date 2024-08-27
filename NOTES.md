# Notes about DART

- [Back to README](README.md)

## Const vs. Final keyword
- [source](https://www.dhiwise.com/post/leveraging-constants-dart-const-vs-final-best-practices)

- Both are immutable. Const is defined at compile time. Final is defined at runtime.
- from the comments: "Fields in a Widget subclass are always marked "final"."

## Fat arrow
`=>` is used for assigning a variable to the return type of a function. E.G.
```
int hey => CreateHey();
```

## SetState
- The `setState` function is useful because it rebuilds the view, that way your changes show up.
- This method is in the `State` class.
- `setState` calls the `State` class's `build` function.