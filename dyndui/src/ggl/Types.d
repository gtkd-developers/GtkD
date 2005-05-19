/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module ggl.Types;

import def.Types;

alias char uchar;
/*
 * OpenGL-related tokens
 */
 
public:
extern(C)
{

/** GDK_GL_SUCCESS */

const int GL_SUCCESS = 0;  /* same as 'Success' of X11 */

/** GDK_GL_ATTRIB_LIST_NONE */

const int GL_ATTRIB_LIST_NONE = 0;  /* same as 'None' of X11 */

/** enum GdkGLConfigAttrib */

enum GLConfigAttrib
{
  USE_GL                     = 1,  /* support GLX rendering */
  BUFFER_SIZE                = 2,  /* depth of the color buffer */
  LEVEL                      = 3,  /* level in plane stacking */
  RGBA                       = 4,  /* true if RGBA mode */
  DOUBLEBUFFER               = 5,  /* double buffering supported */
  STEREO                     = 6,  /* stereo buffering supported */
  AUX_BUFFERS                = 7,  /* number of aux buffers */
  RED_SIZE                   = 8,  /* number of red component bits */
  GREEN_SIZE                 = 9,  /* number of green component bits */
  BLUE_SIZE                  = 10, /* number of blue component bits */
  ALPHA_SIZE                 = 11, /* number of alpha component bits */
  DEPTH_SIZE                 = 12, /* number of depth bits */
  STENCIL_SIZE               = 13, /* number of stencil bits */
  ACCUM_RED_SIZE             = 14, /* number of red accum bits */
  ACCUM_GREEN_SIZE           = 15, /* number of green accum bits */
  ACCUM_BLUE_SIZE            = 16, /* number of blue accum bits */
  ACCUM_ALPHA_SIZE           = 17, /* number of alpha accum bits */

  /*
   * FBConfig-specific attributes.
   * [ GLX 1.3 and later ]
   */
  CONFIG_CAVEAT              = 0x20,
  X_VISUAL_TYPE              = 0x22,
  TRANSPARENT_TYPE           = 0x23,
  TRANSPARENT_INDEX_VALUE    = 0x24,
  TRANSPARENT_RED_VALUE      = 0x25,
  TRANSPARENT_GREEN_VALUE    = 0x26,
  TRANSPARENT_BLUE_VALUE     = 0x27,
  TRANSPARENT_ALPHA_VALUE    = 0x28,
  DRAWABLE_TYPE              = 0x8010,
  RENDER_TYPE                = 0x8011,
  X_RENDERABLE               = 0x8012,
  FBCONFIG_ID                = 0x8013,
  MAX_PBUFFER_WIDTH          = 0x8016,
  MAX_PBUFFER_HEIGHT         = 0x8017,
  MAX_PBUFFER_PIXELS         = 0x8018,
  VISUAL_ID                  = 0x800B,
  SCREEN                     = 0x800C,

  /*
   * Multisampling configuration attributes.
   * [ GLX 1.4 and later ]
   */
  SAMPLE_BUFFERS             = 100000,
  SAMPLES                    = 100001

};

/** GDK_GL_DONT_CARE */

// extern(D) needed to preven namespace
// collision with lib.gl GL_DONT_CARE and GL_NONE - jjr
extern(D) const uint GL_DONT_CARE        = 0xFFFFFFFF;

/** GDK_GL_NONE */

extern(D) const int GL_NONE              = 0x8000;

/** enum GdkGLConfigCaveat */

enum GLConfigCaveat
{
  CONFIG_CAVEAT_DONT_CARE    = cast(int)0xFFFFFFFF, /* GDK_GL_DONT_CARE */
  CONFIG_CAVEAT_NONE         = 0x8000,     /* GDK_GL_NONE */
  SLOW_CONFIG                = 0x8001,
  NON_CONFORMANT_CONFIG      = 0x800D
};

/** enum GdkGLVisualType */

enum  GLVisualType
{
  VISUAL_TYPE_DONT_CARE      = cast(int)0xFFFFFFFF, /* GDK_GL_DONT_CARE */
  TRUE_COLOR                 = 0x8002,
  DIRECT_COLOR               = 0x8003,
  PSEUDO_COLOR               = 0x8004,
  STATIC_COLOR               = 0x8005,
  GRAY_SCALE                 = 0x8006,
  STATIC_GRAY                = 0x8007
};

/** enum GdkGLTransparentType */

enum GLTransparentType
{
  TRANSPARENT_NONE           = 0x8000, /* GDK_GL_NONE */
  TRANSPARENT_RGB            = 0x8008,
  TRANSPARENT_INDEX          = 0x8009
};

/** enum GdkGLDrawableTypeMask */

enum GLDrawableTypeMask
{
  WINDOW_BIT                 = 1 << 0, /* 0x00000001 */
  PIXMAP_BIT                 = 1 << 1, /* 0x00000002 */
  PBUFFER_BIT                = 1 << 2  /* 0x00000004 */
};

/** enum GdkGLRenderTypeMask */

enum GLRenderTypeMask
{
  RGBA_BIT                   = 1 << 0, /* 0x00000001 */
  COLOR_INDEX_BIT            = 1 << 1  /* 0x00000002 */
};

/** enum GdkGLBufferMask */

enum GLBufferMask
{
  FRONT_LEFT_BUFFER_BIT      = 1 << 0, /* 0x00000001 */
  FRONT_RIGHT_BUFFER_BIT     = 1 << 1, /* 0x00000002 */
  BACK_LEFT_BUFFER_BIT       = 1 << 2, /* 0x00000004 */
  BACK_RIGHT_BUFFER_BIT      = 1 << 3, /* 0x00000008 */
  AUX_BUFFERS_BIT            = 1 << 4, /* 0x00000010 */
  DEPTH_BUFFER_BIT           = 1 << 5, /* 0x00000020 */
  STENCIL_BUFFER_BIT         = 1 << 6, /* 0x00000040 */
  ACCUM_BUFFER_BIT           = 1 << 7  /* 0x00000080 */
};

/** enum GdkGLConfigError */

enum GLConfigError
{
  BAD_SCREEN                 = 1, /* screen # is bad */
  BAD_ATTRIBUTE              = 2, /* attribute to get is bad */
  NO_EXTENSION               = 3, /* no glx extension on server */
  BAD_VISUAL                 = 4, /* visual # not known by GLX */
  BAD_CONTEXT                = 5, /* returned only by import_context EXT? */
  BAD_VALUE                  = 6, /* returned only by glXSwapIntervalSGI? */
  BAD_ENUM                   = 7  /* unused? */
};

/** enum GdkGLRenderType */

enum GLRenderType
{
  RGBA_TYPE                  = 0x8014,
  COLOR_INDEX_TYPE           = 0x8015
};

/** enum GdkGLDrawableAttrib */

enum GLDrawableAttrib
{
  PRESERVED_CONTENTS         = 0x801B,
  LARGEST_PBUFFER            = 0x801C,
  WIDTH                      = 0x801D,
  HEIGHT                     = 0x801E,
  EVENT_MASK                 = 0x801F
};

/** enum GdkGLPbufferAttrib */

enum GLPbufferAttrib
{
  PBUFFER_PRESERVED_CONTENTS = 0x801B, /* GDK_GL_PRESERVED_CONTENTS */
  PBUFFER_LARGEST_PBUFFER    = 0x801C, /* GDK_GL_LARGEST_PBUFFER */
  PBUFFER_HEIGHT             = 0x8040,
  PBUFFER_WIDTH              = 0x8041
};

/** enum GdkGLEventMask */

enum GLEventMask
{
  PBUFFER_CLOBBER_MASK       = 1 << 27  /* 0x08000000 */
};

/** enum GdkGLEventType */

enum GLEventType
{
  DAMAGED                    = 0x8020,
  SAVED                      = 0x8021
};

/** enum GdkGLDrawableType */

enum GLDrawableType
{
  WINDOW                     = 0x8022,
  PBUFFER                    = 0x8023
};



struct GdkGLConfig;
struct GdkGLContext;
struct GdkGLWindow;
struct GdkGLDrawable;
struct GdkGLPixmap;

/** enum GdkGLConfigMode */

enum GLConfigMode
{
  RGB         = 0,
  RGBA        = 0,       /* same as RGB */
  INDEX       = 1 << 0,
  SINGLE      = 0,
  DOUBLE      = 1 << 1,
  STEREO      = 1 << 2,
  ALPHA       = 1 << 3,
  DEPTH       = 1 << 4,
  STENCIL     = 1 << 5,
  ACCUM       = 1 << 6,
  MULTISAMPLE = 1 << 7   /* not supported yet */
};

alias ulong VisualID;

};
