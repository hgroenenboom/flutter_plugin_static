#define DYNAMIC_LIBRARY_EXPORT extern "C" __declspec(dllexport)

DYNAMIC_LIBRARY_EXPORT char *flutterplugin_native_cpp_hello_world()
{
    return "Hello World";
}
