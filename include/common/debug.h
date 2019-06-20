#pragma once

#ifdef DEBUG
#define dbgputs(s) do { fprintf(stderr, "%s:%d %s", s); } while(0)
#define dbgprintf(fmt,...) do { fprintf(stderr, "%s:%d " fmt, __FILE__, __LINE__,  __VA_ARGS__); } while(0)
#else
#define dbgputs(s) do { } while(0)
#define dbgprintf(fmt,...) do { } while(0)
#endif
