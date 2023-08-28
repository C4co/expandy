# 🏋 Expandy

<center>
  <p>Flutter expansor component<p>
  <img src="./example.gif" width={350} />
</center>

### Install

`pubspec.yml`
```yml
dependencies:
  imgy:
    git:
      url: https://github.com/C4co/expandy.git
```

### Usage

```dart
  Expandy(
    title: "What is Flutter?",
    children: [

      // -- Content --

      Image.network(
        "https://pbs.twimg.com/media/FKNlhKZUcAEd7FY?format=jpg&name=4096x4096",
        width: double.infinity,
        height: 150,
        fit: BoxFit.cover,
      ),
      const SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.",
            ),
            const SizedBox(height: 10),
            FilledButton(
              onPressed: () {},
              child: const Text('Read more'),
            )
          ],
        ),
      ),
    ],
  ),

```

### Properties

| Name              | Type           | Description                  |
| ----------------- | -------------- | ---------------------------- |
| `children`        | `List<Widget>` | content                      |
| `title`           | `String`       | title                        |
| `backgroundColor` | `Color`        | main color                   |
| `titleStyle`      | `TextStyle`    | title customization          |
| `borderRadius`    | `Double`       | main container border radius |
| `titlePadding`    | `EdgeInserts`  | title paddign                |

---

Carlos Costa 👁 2023