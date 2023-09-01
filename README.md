# 2023 CoMit Recruit Quiz Application

This is a Flutter project for CoMit recruiting

## Getting Started

To build and run this project, you will need:

* Flutter installed
* A code editor

1. Clone this repository.
2. cd into the repo folder.
3. Run `flutter pub get` to install the dependencies.
4. Run `dart run build_runner watch` to generate codes from code generators
4. Run `flutter run` to build and run the project.

## Features

This project has the following features:

- Quiz contents

- leaderboard

## Documentation
해당 프로젝트는 2023년 2학기 CoMit 홍보부스에서 활용하기위해 제작된 스피드 퀴즈 앱입니다. data class 생성을 용이하게 하기위해 freezed패키지를 사용했습니다. 이에 따라서 code generation을 적극적으로 활용하고 있습니다. 반드시 실행 전에 code generation을 적용해주세요.

### Projecct Structure
- <b>constants</b> : textStyles, gap(SizedBox), palette가 정의되어있습니다.
- <b>utils</b> : 앱 내에서 활용할 유틸 함수를 정리합니다.
- <b>data layer</b> : repository 패턴을 적용하였으며, firestore와 통신하는 layer입니다. 
- <b>domain</b> : data class를 정리해둔 layer입니다. (`.freezed.dart`, `.g.dart` 등의 파일은 자동 생성되는 코드이므로 절대 수정하지마세요)
- <b>presentation</b> : UI 코드입니다, 각 스크린 별 폴더로 분류되었고, 여러 스크린에서 활용하는 위젯은 `common_widget`에 정리되어있습니다.

## Packages
프로젝트에 사용된 패키지는 다음과 같습니다.
- freezed
- screenutil

<!-- * The documentation for this project can be found here: https://github.com/<username>/<project-name>/blob/master/README.md -->


## Contact

* If you have any questions or feedback, please contact me at <behind8486@gmail.com>.
