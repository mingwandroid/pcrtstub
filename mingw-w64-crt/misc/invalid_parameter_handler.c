#include <windows.h>

typedef void (__cdecl *_invalid_parameter_handler)(const wchar_t *,const wchar_t *,const wchar_t *,unsigned int,uintptr_t);
static _invalid_parameter_handler handler;

__MINGW_EXPORTED_IF_AGILE _invalid_parameter_handler __cdecl mingw_set_invalid_parameter_handler(_invalid_parameter_handler new_handler)
{
    return InterlockedExchangePointer((void**)&handler, new_handler);
}

#ifndef(_BUILDING_AGILE_DLLIMP)
_invalid_parameter_handler (__cdecl *__MINGW_IMP_SYMBOL(_set_invalid_parameter_handler))(_invalid_parameter_handler) =
    mingw_set_invalid_parameter_handler;
#endif

__MINGW_EXPORTED_IF_AGILE _invalid_parameter_handler __cdecl mingw_get_invalid_parameter_handler(void)
{
    return handler;
}

#ifndef(_BUILDING_AGILE_DLLIMP)
_invalid_parameter_handler (__cdecl *__MINGW_IMP_SYMBOL(_get_invalid_parameter_handler))(void) = mingw_get_invalid_parameter_handler;

_invalid_parameter_handler __cdecl _get_invalid_parameter_handler(void) __attribute__ ((alias ("mingw_get_invalid_parameter_handler")));
_invalid_parameter_handler __cdecl _set_invalid_parameter_handler(_invalid_parameter_handler new_handler) __attribute__ ((alias ("mingw_set_invalid_parameter_handler")));
#endif
