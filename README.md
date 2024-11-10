<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

I recently saw the Play Store's bottom navigation bar and decided to create a similar one for Flutter. Using a reusable solution from Pub.dev can make integration much easier than designing it from scratch.


## Example Code

<div style="text-align: center">
    <table>
        <tr>
            <td style="text-align: center">
                <a href="https://bloclibrary.dev/tutorials/flutter-counter">
                    <img src="https://raw.githubusercontent.com/Prashant-ranjan-singh-123/material_bottom_nav_bar/refs/heads/main/example/material_bottom_nav_bar_example/readme_things/demo.gif" width="200"/>
                </a>
            </td>            
            <td style="text-align: center">
                <a href="https://bloclibrary.dev/tutorials/flutter-infinite-list">
                    <img src="https://raw.githubusercontent.com/Prashant-ranjan-singh-123/material_bottom_nav_bar/refs/heads/main/example/material_bottom_nav_bar_example/readme_things/img.png" width="200"/>
                </a>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <a href="https://bloclibrary.dev/tutorials/github-search">
                    <img src="https://raw.githubusercontent.com/Prashant-ranjan-singh-123/material_bottom_nav_bar/refs/heads/main/example/material_bottom_nav_bar_example/readme_things/img_2.png" width="200"/>
                </a>
            </td>
            <td style="text-align: center">
                <a href="https://bloclibrary.dev/tutorials/flutter-weather">
                    <img src="https://raw.githubusercontent.com/Prashant-ranjan-singh-123/material_bottom_nav_bar/refs/heads/main/example/material_bottom_nav_bar_example/readme_things/img_3.png" width="200"/>
                </a>
            </td>
        </tr>
    </table>
</div>

## How To Use

### 1) Run this command inside flutter project
```
flutter pub add material_bottom_nav_bar
```

### 2) Import Dependencies
```
import 'package:material_bottom_nav_bar/material_bottom_nav_bar.dart';
import 'package:material_bottom_nav_bar/model/item_model.dart';
```

### 3) Use It
```dart
bottomNavigationBar: MaterialBottomNavBar(
  currentIndex: 0, // It will activate that index
  onTap: (int index) => {
    // do what you want
  },
  cardElevation: 20,
  items: [
    NavBarItem(
      selectedIcon: const Icon(Icons.home, color: Colors.black),
      unSelectedIcon: const Icon(Icons.home_outlined),
      label: 'Home',
    ),
    NavBarItem(
      selectedIcon: const Icon(Icons.search_outlined, color: Colors.black),
      unSelectedIcon: const Icon(Icons.search_outlined),
      label: 'Search',
    ),
    NavBarItem(
      selectedIcon: const Icon(
        Icons.shopping_cart,
        color: Colors.black,
      ),
      unSelectedIcon: const Icon(Icons.shopping_cart_outlined),
      label: 'Cart',
    ),
    NavBarItem(
      selectedIcon: const Icon(Icons.person, color: Colors.black),
      unSelectedIcon: const Icon(Icons.person_outline),
      label: 'Profile',
    ),
  ],
)
```


## Contributing

If you want to contribute to a project and make it better, your help is very welcome. Contributing is also a great way to learn more about social coding on Github, new technologies and and their ecosystems and how to make constructive, helpful bug reports, feature requests and the noblest of all contributions: a good, clean pull request.

### How to make a clean pull request

Look for a project's contribution instructions. If there are any, follow them.

- Create a personal fork of the project on Github.
- Clone the fork on your local machine. Your remote repo on Github is called `origin`.
- Add the original repository as a remote called `upstream`.
- If you created your fork a while ago be sure to pull upstream changes into your local repository.
- Create a new branch to work on! Branch from `develop` if it exists, else from `master`.
- Implement/fix your feature, comment your code.
- Follow the code style of the project, including indentation.
- If the project has tests run them!
- Write or adapt tests as needed.
- Add or change the documentation as needed.
- Squash your commits into a single commit with git's [interactive rebase](https://help.github.com/articles/interactive-rebase). Create a new branch if necessary.
- Push your branch to your fork on Github, the remote `origin`.
- From your fork open a pull request in the correct branch. Target the project's `develop` branch if there is one, else go for `master`!
- ...
- Once the pull request is approved and merged you can pull the changes from `upstream` to your local repo and delete
  your extra branch(es).

And last but not least: Always write your commit messages in the present tense. Your commit message should describe what the commit, when applied, does to the code – not what you did to the code.



## TODO

- [ ]  Make it dismisable with vertical scrolling.

### License

```
MIT License

Copyright (c) 2024 Prashant Ranjan Singh

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

## 👨‍💻 Contributors

<a href='https://github.com/Prashant-ranjan-singh-123/material_bottom_nav_bar/graphs/contributors'>
  <img src='https://contrib.rocks/image?repo=Prashant-ranjan-singh-123/material_bottom_nav_bar' />
</a>

</div>

## 🙋 Support

- **Email:** [prashant.singh.12312345@gmail.com](https://mail.google.com/mail/u/?authuser=prashant.singh.12312345@gmail.com)
- **LinkedIn:** [prashant-ranjan-singh-b9b6b9217](https://www.linkedin.com/in/prashant-ranjan-singh-b9b6b9217/)
