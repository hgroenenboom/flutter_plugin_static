#include "include/flutterplugin/flutterplugin_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutterplugin_plugin.h"

void FlutterpluginPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutterplugin::FlutterpluginPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
