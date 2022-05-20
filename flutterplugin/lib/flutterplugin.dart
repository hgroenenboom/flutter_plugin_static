// You have generated a new plugin project without specifying the `--platforms`
// flag. A plugin project with no platform support was generated. To add a
// platform, run `flutter create -t plugin --platforms <platforms> .` under the
// same directory. You can also find a detailed instruction on how to add
// platforms in the `pubspec.yaml` at
// https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'dart:ffi';
import 'dart:io' show Directory, Platform;
import 'package:ffi/ffi.dart';
import 'package:path/path.dart' as path;

import 'flutterplugin_platform_interface.dart';

late DynamicLibrary flutterpluginLib;

// C function: char *hello_world();
// There's no need for two typedefs here, as both the
// C and Dart functions have the same signature
typedef HelloWorld = Pointer<Utf8> Function();

class Flutterplugin {
  Flutterplugin()
  {
    assert(Platform.isWindows);

    flutterpluginLib = DynamicLibrary.open('flutterplugin_plugin.dll');
    assert(flutterpluginLib.providesSymbol('flutterplugin_native_cpp_hello_world'));
  }

  Future<String?> getPlatformVersion() {
    return FlutterpluginPlatform.instance.getPlatformVersion();
  }

  String test() {
    return "from Flutterplugin";
  }

  String hello_world()
  {
    final helloWorld = flutterpluginLib.lookupFunction<HelloWorld, HelloWorld>('flutterplugin_native_cpp_hello_world');
    return helloWorld().toDartString();
  }
}
