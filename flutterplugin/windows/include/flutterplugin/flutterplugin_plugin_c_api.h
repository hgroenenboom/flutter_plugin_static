#ifndef FLUTTER_PLUGIN_FLUTTERPLUGIN_PLUGIN_C_API_H_
#define FLUTTER_PLUGIN_FLUTTERPLUGIN_PLUGIN_C_API_H_

#include <flutter_plugin_registrar.h>

#if defined(__cplusplus)
extern "C" {
#endif

void FlutterpluginPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar);

#if defined(__cplusplus)
}  // extern "C"
#endif

#endif  // FLUTTER_PLUGIN_FLUTTERPLUGIN_PLUGIN_C_API_H_
