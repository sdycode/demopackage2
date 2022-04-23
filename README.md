
# Demopackage2

Demopackage2 gives artistic text

## Installation 

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  demopackage2: ^0.0.1
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:demopackage2/demopackage2.dart';
```



<hr>

<table>
<tr>
<td>

```dart
class Screen extends StatelessWidget {  
  const Screen({Key? key}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      body: Center(  
        child:  ArtText(style: Style.style1,),
      ),  
    );  
  }  
}
```

</td>
<td>

</td>
</tr>
</table>

## Next Goals

 - [] Addcustomising art text
