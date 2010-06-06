use freetype2

FTEncoding: extern(FT_Encoding) enum {
    /* deprecated values have been exlcuded */
    none: extern(FT_ENCODING_NONE)
    msSymbol: extern(FT_ENCODING_MS_SYMBOL)
    unicode: extern(FT_ENCODING_UNICODE)
    sjis: extern(FT_ENCODING_SJIS)
    gb2132: extern(FT_ENCODING_GB2312)
    big5: extern(FT_ENCODING_BIG5)
    wansung: extern(FT_ENCODING_WANSUNG)
    johab: extern(FT_ENCODING_JOHAB)
    adobeStandard: extern(FT_ENCODING_ADOBE_STANDARD)
    adobeExpert: extern(FT_ENCODING_ADOBE_EXPERT)
    adobeCustom: extern(FT_ENCODING_ADOBE_CUSTOM)
    adobeLatin1: extern(FT_ENCODING_ADOBE_LATIN_1)
    oldLatin1: extern(FT_ENCODING_OLD_LATIN_2)
    appleRoman: extern(FT_ENCODING_APPLE_ROMAN)
}

FTFaceFlag: extern(FT_Long) enum {
    scalable: extern(FT_FACE_FLAG_SCALABLE)
    fixedSizes: extern(FT_FACE_FLAG_FIXED_SIZES)
    fixedWidth: extern(FT_FACE_FLAG_FIXED_WIDTH)
    SFNT: extern(FT_FACE_FLAG_SFNT)
    horizontal: extern(FT_FACE_FLAG_HORIZONTAL)
    vertical: extern(FT_FACE_FLAG_VERTICAL)
    kerning: extern(FT_FACE_FLAG_KERNING)
    fastGlyphs: extern(FT_FACE_FLAG_FAST_GLYPHS)
    multipleMasters: extern(FT_FACE_FLAG_MULTIPLE_MASTERS)
    glyphNames: extern(FT_FACE_FLAG_GLYPH_NAMES)
    externalStream: extern(FT_FACE_FLAG_EXTERNAL_STREAM)
    hinter: extern(FT_FACE_FLAG_HINTER)
    cidKeyed: extern(FT_FACE_FLAG_CID_KEYED)
    tricky: extern(FT_FACE_FLAG_TRICKY)
}

FTStyleFlag: extern(FT_Long) enum {
    italic: extern(FT_STYLE_FLAG_ITALIC)
    bold: extern(FT_STYLE_FLAG_BOLD)
}

FTPixelMode: extern(FT_Pixel_Mode) enum {
    none: extern(FT_PIXEL_MODE_NONE)
    mono: extern(FT_PIXEL_MODE_MONO)
    gray: extern(FT_PIXEL_MODE_GRAY)
    gray2: extern(FT_PIXEL_MODE_GRAY2)
    gray4: extern(FT_PIXEL_MODE_GRAY4)
    lcd: extern(FT_PIXEL_MODE_LCD)
    lcdV: extern(FT_PIXEL_MODE_LCD_V)
}

FTGlyphFormat: extern(FT_Glyph_Format) enum {
    none: extern(FT_GLYPH_FORMAT_NONE)
    composite: extern(FT_GLYPH_FORMAT_COMPOSITE)
    bitmap: extern(FT_GLYPH_FORMAT_BITMAP)
    outline: extern(FT_GLYPH_FORMAT_OUTLINE)
    plotter: extern(FT_GLYPH_FORMAT_PLOTTER)
}

FTOpenFlag: enum {
    memory: extern(FT_OPEN_MEMORY)
    stream: extern(FT_OPEN_STREAM)
    pathname: extern(FT_OPEN_PATHNAME)
    driver: extern(FT_OPEN_DRIVER)
    params: extern(FT_OPEN_PARAMS)
}

FTSizeRequestType: extern(FT_Size_Request_Type) enum {
    nominal: extern(FT_SIZE_REQUEST_TYPE_NOMINAL)
    realDim: extern(FT_SIZE_REQUEST_TYPE_REAL_DIM)
    bbox: extern(FT_SIZE_REQUEST_TYPE_BBOX)
    cell: extern(FT_SIZE_REQUEST_TYPE_CELL)
    scales: extern(FT_SIZE_REQUEST_TYPE_SCALES)
    max: extern(FT_SIZE_REQUEST_TYPE_MAX)
}

FTLoadFlag: enum {
    default: extern(FT_LOAD_DEFAULT)
    noScale: extern(FT_LOAD_NO_SCALE)
    noHinting: extern(FT_LOAD_NO_HINTING)
    render: extern(FT_LOAD_RENDER)
    noBitmap: extern(FT_LOAD_NO_BITMAP)
    verticalLayout: extern(FT_LOAD_VERTICAL_LAYOUT)
    forceAutohint: extern(FT_LOAD_FORCE_AUTOHINT)
    cropBitmap: extern(FT_LOAD_CROP_BITMAP)
    pedantic: extern(FT_LOAD_PEDANTIC)
    ignoreGlobalAdvanceWidth: extern(FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH)
    noRecurse: extern(FT_LOAD_NO_RECURSE)
    ignoreTransform: extern(FT_LOAD_IGNORE_TRANSFORM)
    monochrome: extern(FT_LOAD_MONOCHROME)
    linearDesign: extern(FT_LOAD_LINEAR_DESIGN)
    noAutohint: extern(FT_LOAD_NO_AUTOHINT)
    
    /** target **/
    normal: extern(FT_LOAD_TARGET_NORMAL)
    light: extern(FT_LOAD_TARGET_LIGHT)
    mono: extern(FT_LOAD_TARGET_MONO)
    lcd: extern(FT_LOAD_TARGET_LCD)
    lcdV: extern(FT_LOAD_TARGET_LCD_V)
}

FTRenderMode: extern(FT_Render_Mode) enum {
    normal: extern(FT_RENDER_MODE_NORMAL)
    light: extern(FT_RENDER_MODE_LIGHT)
    mono: extern(FT_RENDER_MODE_MONO)
    lcd: extern(FT_RENDER_MODE_LCD)
    lcdV: extern(FT_RENDER_MODE_LCD_V)
    max: extern(FT_RENDER_MODE_MAX)
}

FTKerningMode: extern(FT_Kerning_Mode) enum {
    default: extern(FT_KERNING_DEFAULT)
    unfitted: extern(FT_KERNING_UNFITTED)
    unscaled: extern(FT_KERNING_UNSCALED)
}

FTOutline: cover from FT_Outline

FTSize: cover from FTSizeRec*

FTGlyphSlot: cover from FT_GlyphSlotRec* {
    render: extern(FT_Render_Glyph) func(render_mode: FTRenderMode) -> Int
}

FTModule: cover from FT_Module

FTDriver: cover from FT_Driver

FTRenderer: cover from FT_Renderer

FTFaceInternal: cover from FT_Face_Internal

FT26Dot6: cover from FT_F26Dot6 extends Long

FTMemory: cover from FT_Memory

FTStream: cover from FT_Stream

FTListRec: cover from FT_ListRec

FTFWord: cover from FT_FWord extends Short

FTUFWord: cover from FT_UFWord extends UShort

FTSizeInternal: cover from FT_Size_Internal

FTSubGlyph: cover from FT_SubGlyph

FTSlotInternal: cover from FT_Slot_Internal

FTSizeRequestRec: cover from FT_Size_RequestRec {
    type: extern FTSizeRequestType
    width, height: extern Long
    horiResolution, vertResolution: extern UInt
}

FTSizeRequest: cover from FTSizeRequestRec*

FTParameter: cover from FT_Parameter {
    tag: ULong
    data: Pointer
}

FTOpenArgs: cover from FT_Open_Args {
    flags: extern FTOpenFlag
    memory_base: extern const UChar*
    memory_size: Long
    pathname: String
    stream: FTStream
    driver: FTModule
    num_params: Int
    params: FTParameter
}

FTPos: cover from FT_Pos extends Long {
    
}

FTFixed: cover from FT_Fixed extends Long {
    
}

FTF2Dot14: cover from FT_F2Dot14 extends Short {
    
}

FTF26Dot6: cover from FT_F2Dot14 extends Long {
    
}

FTData: cover from FT_Data {
    pointer: Pointer
    length: Int
}

FTBitmap: cover from FT_Bitmap {
    rows, width, pitch: extern Int
    buffer: extern UChar*
    num_grays: extern Short
    pixel_mode: extern FTPixelMode
    palette_mode: extern Char
    palette: extern Pointer
}

FTGlyphMetrics: cover from FT_Glyph_Metrics {
    width, height: extern FTPos
    horiBearingX, horiBearingY, horiAdvance: extern FTPos
    vertBearingX, vertBearingY, vertAdvance: extern FTPos
}

FTBitmapSize: cover from FT_Bitmap_Size {
    height, width: extern Short
    size: extern FTPos
    x_ppem, y_ppem: extern FTPos
}


FTCharMapRec: cover from FT_CharMapRec {
    face: extern FTFace
    encoding: extern FTEncoding
    platform_id, encoding_id: extern UShort
}

FTUnitVector: cover from FT_UnitVector {
    x, y: extern FTF2Dot14
}

FTBBox: cover from FT_BBox {
    xMin, yMin, xMax, yMax: extern FTPos
}

FTVector: cover from FT_Vector {
    x, y: extern FTPos
}

FTMatrix: cover from FT_Matrix {
    xx, xy, yx, yy: extern FTFixed
}

FTGeneric: cover from FT_Generic {
    data: extern Pointer
    finalizer: Func (Pointer)
}

FTSizeMetrics: cover from FT_Size_Metrics {
    x_ppem, y_ppem: extern UShort
    x_scale, y_scale: extern FTFixed
    ascender, descender, height, max_advance: extern FTPos
}

FTSizeRec: cover from FT_SizeRec {
    face: extern FTFace
    generic: extern FTGeneric
    metrics: FTSizeMetrics
    internal: FTSizeInternal
}

FTGlyphSlotRec: cover from FT_GlyphSlotRec {
    library: extern FTLibrary
    face: extern FTFace
    next: extern FTGlyphSlot
    reserved: extern UInt
    generic: extern FTGeneric
    metrics: extern FTGlyphMetrics
    linearHoriAdvance: extern FTFixed
    linearVertAdvance: extern FTFixed
    advance: extern FTVector
    format: extern FTGlyphFormat
    bitmap: extern FTBitmap
    bitmap_left: extern Int
    bitmap_top: extern Int
    outline: extern FTOutline
    num_subglyphs: extern UInt
    subglyphs: extern FTSubGlyph
    control_data: extern Pointer
    control_len: extern Long
    lsb_delta: extern FTPos
    rsb_delta: extern FTPos
    other: extern Pointer
    internal: extern FTSlotInternal
}

FTLibrary: cover from FT_Library {
    version: extern(FT_Library_Version) func (amajor, aminor, apatch: Int*)
    
    initFreeType: extern(FT_Init_FreeType) func@ -> Int
    done: extern(FT_Done_FreeType) func -> Int
    
    newFace: extern(FT_New_Face) func (filepathname: const String, face_index: Long, aface: FTFace*) -> Int
    newMemoryFace: extern(FT_New_Face_Memory) func (file_base: const UChar*, file_size: Long, face_index: Long, aface: FTFace*) -> Int
    openFace: extern(FT_Open_Face) func (args: const FTOpenArgs*, face_index: Long, face: FTFace*) -> Int
}

FTFace: cover from FTFaceRec* {
    attachFile: extern(FT_Attach_File) func (filepathname: const String) -> Int
    attachStream: extern(FT_Attach_Stream) func (parameters: FTOpenArgs*)
    done: extern(FT_Done_Face) func -> Int
    selectSize: extern(FT_Select_Size) func (strike_index: Int) -> Int
    requestSize: extern(FT_Request_Size) func (req: FTSizeRequest) -> Int
    setCharSize: extern(FT_Set_Char_Size) func (char_width, char_height: FTF26Dot6, horz_resolution, vert_resolution: UInt) -> Int
    setPixelSizes: extern(FT_Set_Pixel_Sizes) func (pixel_width, pixel_height: UInt) -> Int
    loadGlyph: extern(FT_Load_Glyph) func (glyph_index: UInt, load_flags: FTLoadFlag) -> Int
    loadChar: extern(FT_Load_Char) func (char_code: ULong, load_flags: FTLoadFlag) -> Int
    setTransform: extern(FT_Set_Transform) func (matrix: FTMatrix*, delta: FTVector*)
    getKerning: extern(FT_Get_Kerning) func (left_glyph, right_glyph: UInt, kern_mode: FTKerningMode, akerning: FTVector*) -> Int
    getTrackKerning: extern(FT_Get_Track_Kerning) func (point_size: FTFixed, degree: Int, akerning: FTFixed*) -> Int
    getGlyphName: extern(FT_Get_Glyph_Name) func (glyph_index: UInt, buffer: Pointer, buffer_max: UInt) -> Int
    getPostscriptName: extern(FT_Get_Postscript_Name) func -> const String
    selectCharmap: extern(FT_Select_Charmap) func (encoding: FTEncoding) -> Int
    setCharmap: extern(FT_Set_Charmap) func (encoding: FTEncoding) -> Int
}

FTCharMap: cover from FTCharMapRec* {
    getIndex: extern(FT_Get_Charmap_Index) func -> Int
}

FTFaceRec: cover from FT_FaceRec {
    num_faces, face_index: extern Long
    face_flags: extern FTFaceFlag
    style_flags: extern FTStyleFlag
    num_glyphs: extern Long
    family_name, style_name: extern String
    num_fixed_sizes: extern Int
    available_sizes: extern FTBitmapSize*
    num_charmaps: extern Int
    charmaps: extern FTCharMap*
    generic: extern FTGeneric
    bbox: extern FTBBox
    units_per_EM: extern UShort
    ascender, descender, height: extern Short
    max_advance_width, max_advance_height: extern Short
    underline_position, underline_thickness: extern Short
    glyph: extern FTGlyphSlot
    size: extern FTSize
    charmap: extern FTCharMap
    /* private */
    driver: extern FTDriver
    memory: extern FTMemory
    stream: extern FTStream
    sizes_list: extern FTListRec
    autohint: extern FTGeneric
    extensions: extern Pointer
    internal: extern FTFaceInternal
    
    hasHorizontal?: extern(FT_HAS_HORIZONTAL) func@ -> Bool
    hasVertical?: extern(FT_HAS_HORIZONTAL) func@ -> Bool
    hasKerning?: extern(FT_HAS_HORIZONTAL) func@ -> Bool
    isScalable?: extern(FT_IS_SCALABLE) func@ -> Bool
    isSFNT?: extern(FT_IS_SFNT) func@ -> Bool
    isFixedWidth?: extern(FT_IS_FIXED_WIDTH) func@ -> Bool
    hasFixedSizes?: extern(FT_HAS_FIXED_SIZES) func@ -> Bool
    hasFastGlyphs?: extern(FT_HAS_FAST_GLYPHS) func@ -> Bool
    hasGlyphNames?: extern(FT_HAS_GLYPH_NAMES) func@ -> Bool
    hasMultipleMasters?: extern(FT_HAS_MULTIPLE_MASTERS) func@ -> Bool
    isCIDKeyed?: extern(FT_IS_CID_KEYED) func@ -> Bool
    isTricky?: extern(FT_IS_TRICKY) func@ -> Bool
}

//ftEncTag: extern(FT_ENC_TAG) func (value, a, b, c, d: UInt32)

