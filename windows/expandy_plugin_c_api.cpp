#include "include/expandy/expandy_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "expandy_plugin.h"

void ExpandyPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  expandy::ExpandyPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
