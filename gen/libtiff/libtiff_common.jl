# Automatically generated using Clang.jl


const TIFF_VERSION_CLASSIC = 42
const TIFF_VERSION_BIG = 43
const TIFF_BIGENDIAN = 0x4d4d
const TIFF_LITTLEENDIAN = 0x4949
const MDI_LITTLEENDIAN = 0x5045
const MDI_BIGENDIAN = 0x4550
const TIFFTAG_SUBFILETYPE = 254
const FILETYPE_REDUCEDIMAGE = 0x01
const FILETYPE_PAGE = 0x02
const FILETYPE_MASK = 0x04
const TIFFTAG_OSUBFILETYPE = 255
const OFILETYPE_IMAGE = 1
const OFILETYPE_REDUCEDIMAGE = 2
const OFILETYPE_PAGE = 3
const TIFFTAG_IMAGEWIDTH = 256
const TIFFTAG_IMAGELENGTH = 257
const TIFFTAG_BITSPERSAMPLE = 258
const TIFFTAG_COMPRESSION = 259
const COMPRESSION_NONE = 1
const COMPRESSION_CCITTRLE = 2
const COMPRESSION_CCITTFAX3 = 3
const COMPRESSION_CCITT_T4 = 3
const COMPRESSION_CCITTFAX4 = 4
const COMPRESSION_CCITT_T6 = 4
const COMPRESSION_LZW = 5
const COMPRESSION_OJPEG = 6
const COMPRESSION_JPEG = 7
const COMPRESSION_T85 = 9
const COMPRESSION_T43 = 10
const COMPRESSION_NEXT = 32766
const COMPRESSION_CCITTRLEW = 32771
const COMPRESSION_PACKBITS = 32773
const COMPRESSION_THUNDERSCAN = 32809
const COMPRESSION_IT8CTPAD = 32895
const COMPRESSION_IT8LW = 32896
const COMPRESSION_IT8MP = 32897
const COMPRESSION_IT8BL = 32898
const COMPRESSION_PIXARFILM = 32908
const COMPRESSION_PIXARLOG = 32909
const COMPRESSION_DEFLATE = 32946
const COMPRESSION_ADOBE_DEFLATE = 8
const COMPRESSION_DCS = 32947
const COMPRESSION_JBIG = 34661
const COMPRESSION_SGILOG = 34676
const COMPRESSION_SGILOG24 = 34677
const COMPRESSION_JP2000 = 34712
const COMPRESSION_LERC = 34887
const COMPRESSION_LZMA = 34925
const COMPRESSION_ZSTD = 50000
const COMPRESSION_WEBP = 50001
const TIFFTAG_PHOTOMETRIC = 262
const PHOTOMETRIC_MINISWHITE = 0
const PHOTOMETRIC_MINISBLACK = 1
const PHOTOMETRIC_RGB = 2
const PHOTOMETRIC_PALETTE = 3
const PHOTOMETRIC_MASK = 4
const PHOTOMETRIC_SEPARATED = 5
const PHOTOMETRIC_YCBCR = 6
const PHOTOMETRIC_CIELAB = 8
const PHOTOMETRIC_ICCLAB = 9
const PHOTOMETRIC_ITULAB = 10
const PHOTOMETRIC_CFA = 32803
const PHOTOMETRIC_LOGL = 32844
const PHOTOMETRIC_LOGLUV = 32845
const TIFFTAG_THRESHHOLDING = 263
const THRESHHOLD_BILEVEL = 1
const THRESHHOLD_HALFTONE = 2
const THRESHHOLD_ERRORDIFFUSE = 3
const TIFFTAG_CELLWIDTH = 264
const TIFFTAG_CELLLENGTH = 265
const TIFFTAG_FILLORDER = 266
const FILLORDER_MSB2LSB = 1
const FILLORDER_LSB2MSB = 2
const TIFFTAG_DOCUMENTNAME = 269
const TIFFTAG_IMAGEDESCRIPTION = 270
const TIFFTAG_MAKE = 271
const TIFFTAG_MODEL = 272
const TIFFTAG_STRIPOFFSETS = 273
const TIFFTAG_ORIENTATION = 274
const ORIENTATION_TOPLEFT = 1
const ORIENTATION_TOPRIGHT = 2
const ORIENTATION_BOTRIGHT = 3
const ORIENTATION_BOTLEFT = 4
const ORIENTATION_LEFTTOP = 5
const ORIENTATION_RIGHTTOP = 6
const ORIENTATION_RIGHTBOT = 7
const ORIENTATION_LEFTBOT = 8
const TIFFTAG_SAMPLESPERPIXEL = 277
const TIFFTAG_ROWSPERSTRIP = 278
const TIFFTAG_STRIPBYTECOUNTS = 279
const TIFFTAG_MINSAMPLEVALUE = 280
const TIFFTAG_MAXSAMPLEVALUE = 281
const TIFFTAG_XRESOLUTION = 282
const TIFFTAG_YRESOLUTION = 283
const TIFFTAG_PLANARCONFIG = 284
const PLANARCONFIG_CONTIG = 1
const PLANARCONFIG_SEPARATE = 2
const TIFFTAG_PAGENAME = 285
const TIFFTAG_XPOSITION = 286
const TIFFTAG_YPOSITION = 287
const TIFFTAG_FREEOFFSETS = 288
const TIFFTAG_FREEBYTECOUNTS = 289
const TIFFTAG_GRAYRESPONSEUNIT = 290
const GRAYRESPONSEUNIT_10S = 1
const GRAYRESPONSEUNIT_100S = 2
const GRAYRESPONSEUNIT_1000S = 3
const GRAYRESPONSEUNIT_10000S = 4
const GRAYRESPONSEUNIT_100000S = 5
const TIFFTAG_GRAYRESPONSECURVE = 291
const TIFFTAG_GROUP3OPTIONS = 292
const TIFFTAG_T4OPTIONS = 292
const GROUP3OPT_2DENCODING = 0x01
const GROUP3OPT_UNCOMPRESSED = 0x02
const GROUP3OPT_FILLBITS = 0x04
const TIFFTAG_GROUP4OPTIONS = 293
const TIFFTAG_T6OPTIONS = 293
const GROUP4OPT_UNCOMPRESSED = 0x02
const TIFFTAG_RESOLUTIONUNIT = 296
const RESUNIT_NONE = 1
const RESUNIT_INCH = 2
const RESUNIT_CENTIMETER = 3
const TIFFTAG_PAGENUMBER = 297
const TIFFTAG_COLORRESPONSEUNIT = 300
const COLORRESPONSEUNIT_10S = 1
const COLORRESPONSEUNIT_100S = 2
const COLORRESPONSEUNIT_1000S = 3
const COLORRESPONSEUNIT_10000S = 4
const COLORRESPONSEUNIT_100000S = 5
const TIFFTAG_TRANSFERFUNCTION = 301
const TIFFTAG_SOFTWARE = 305
const TIFFTAG_DATETIME = 306
const TIFFTAG_ARTIST = 315
const TIFFTAG_HOSTCOMPUTER = 316
const TIFFTAG_PREDICTOR = 317
const PREDICTOR_NONE = 1
const PREDICTOR_HORIZONTAL = 2
const PREDICTOR_FLOATINGPOINT = 3
const TIFFTAG_WHITEPOINT = 318
const TIFFTAG_PRIMARYCHROMATICITIES = 319
const TIFFTAG_COLORMAP = 320
const TIFFTAG_HALFTONEHINTS = 321
const TIFFTAG_TILEWIDTH = 322
const TIFFTAG_TILELENGTH = 323
const TIFFTAG_TILEOFFSETS = 324
const TIFFTAG_TILEBYTECOUNTS = 325
const TIFFTAG_BADFAXLINES = 326
const TIFFTAG_CLEANFAXDATA = 327
const CLEANFAXDATA_CLEAN = 0
const CLEANFAXDATA_REGENERATED = 1
const CLEANFAXDATA_UNCLEAN = 2
const TIFFTAG_CONSECUTIVEBADFAXLINES = 328
const TIFFTAG_SUBIFD = 330
const TIFFTAG_INKSET = 332
const INKSET_CMYK = 1
const INKSET_MULTIINK = 2
const TIFFTAG_INKNAMES = 333
const TIFFTAG_NUMBEROFINKS = 334
const TIFFTAG_DOTRANGE = 336
const TIFFTAG_TARGETPRINTER = 337
const TIFFTAG_EXTRASAMPLES = 338
const EXTRASAMPLE_UNSPECIFIED = 0
const EXTRASAMPLE_ASSOCALPHA = 1
const EXTRASAMPLE_UNASSALPHA = 2
const TIFFTAG_SAMPLEFORMAT = 339
const SAMPLEFORMAT_UINT = 1
const SAMPLEFORMAT_INT = 2
const SAMPLEFORMAT_IEEEFP = 3
const SAMPLEFORMAT_VOID = 4
const SAMPLEFORMAT_COMPLEXINT = 5
const SAMPLEFORMAT_COMPLEXIEEEFP = 6
const TIFFTAG_SMINSAMPLEVALUE = 340
const TIFFTAG_SMAXSAMPLEVALUE = 341
const TIFFTAG_CLIPPATH = 343
const TIFFTAG_XCLIPPATHUNITS = 344
const TIFFTAG_YCLIPPATHUNITS = 345
const TIFFTAG_INDEXED = 346
const TIFFTAG_JPEGTABLES = 347
const TIFFTAG_OPIPROXY = 351
const TIFFTAG_GLOBALPARAMETERSIFD = 400
const TIFFTAG_PROFILETYPE = 401
const PROFILETYPE_UNSPECIFIED = 0
const PROFILETYPE_G3_FAX = 1
const TIFFTAG_FAXPROFILE = 402
const FAXPROFILE_S = 1
const FAXPROFILE_F = 2
const FAXPROFILE_J = 3
const FAXPROFILE_C = 4
const FAXPROFILE_L = 5
const FAXPROFILE_M = 6
const TIFFTAG_CODINGMETHODS = 403
const CODINGMETHODS_T4_1D = 1 << 1
const CODINGMETHODS_T4_2D = 1 << 2
const CODINGMETHODS_T6 = 1 << 3
const CODINGMETHODS_T85 = 1 << 4
const CODINGMETHODS_T42 = 1 << 5
const CODINGMETHODS_T43 = 1 << 6
const TIFFTAG_VERSIONYEAR = 404
const TIFFTAG_MODENUMBER = 405
const TIFFTAG_DECODE = 433
const TIFFTAG_IMAGEBASECOLOR = 434
const TIFFTAG_T82OPTIONS = 435
const TIFFTAG_JPEGPROC = 512
const JPEGPROC_BASELINE = 1
const JPEGPROC_LOSSLESS = 14
const TIFFTAG_JPEGIFOFFSET = 513
const TIFFTAG_JPEGIFBYTECOUNT = 514
const TIFFTAG_JPEGRESTARTINTERVAL = 515
const TIFFTAG_JPEGLOSSLESSPREDICTORS = 517
const TIFFTAG_JPEGPOINTTRANSFORM = 518
const TIFFTAG_JPEGQTABLES = 519
const TIFFTAG_JPEGDCTABLES = 520
const TIFFTAG_JPEGACTABLES = 521
const TIFFTAG_YCBCRCOEFFICIENTS = 529
const TIFFTAG_YCBCRSUBSAMPLING = 530
const TIFFTAG_YCBCRPOSITIONING = 531
const YCBCRPOSITION_CENTERED = 1
const YCBCRPOSITION_COSITED = 2
const TIFFTAG_REFERENCEBLACKWHITE = 532
const TIFFTAG_STRIPROWCOUNTS = 559
const TIFFTAG_XMLPACKET = 700
const TIFFTAG_OPIIMAGEID = 32781
const TIFFTAG_REFPTS = 32953
const TIFFTAG_REGIONTACKPOINT = 32954
const TIFFTAG_REGIONWARPCORNERS = 32955
const TIFFTAG_REGIONAFFINE = 32956
const TIFFTAG_MATTEING = 32995
const TIFFTAG_DATATYPE = 32996
const TIFFTAG_IMAGEDEPTH = 32997
const TIFFTAG_TILEDEPTH = 32998
const TIFFTAG_PIXAR_IMAGEFULLWIDTH = 33300
const TIFFTAG_PIXAR_IMAGEFULLLENGTH = 33301
const TIFFTAG_PIXAR_TEXTUREFORMAT = 33302
const TIFFTAG_PIXAR_WRAPMODES = 33303
const TIFFTAG_PIXAR_FOVCOT = 33304
const TIFFTAG_PIXAR_MATRIX_WORLDTOSCREEN = 33305
const TIFFTAG_PIXAR_MATRIX_WORLDTOCAMERA = 33306
const TIFFTAG_WRITERSERIALNUMBER = 33405
const TIFFTAG_CFAREPEATPATTERNDIM = 33421
const TIFFTAG_CFAPATTERN = 33422
const TIFFTAG_COPYRIGHT = 33432
const TIFFTAG_RICHTIFFIPTC = 33723
const TIFFTAG_IT8SITE = 34016
const TIFFTAG_IT8COLORSEQUENCE = 34017
const TIFFTAG_IT8HEADER = 34018
const TIFFTAG_IT8RASTERPADDING = 34019
const TIFFTAG_IT8BITSPERRUNLENGTH = 34020
const TIFFTAG_IT8BITSPEREXTENDEDRUNLENGTH = 34021
const TIFFTAG_IT8COLORTABLE = 34022
const TIFFTAG_IT8IMAGECOLORINDICATOR = 34023
const TIFFTAG_IT8BKGCOLORINDICATOR = 34024
const TIFFTAG_IT8IMAGECOLORVALUE = 34025
const TIFFTAG_IT8BKGCOLORVALUE = 34026
const TIFFTAG_IT8PIXELINTENSITYRANGE = 34027
const TIFFTAG_IT8TRANSPARENCYINDICATOR = 34028
const TIFFTAG_IT8COLORCHARACTERIZATION = 34029
const TIFFTAG_IT8HCUSAGE = 34030
const TIFFTAG_IT8TRAPINDICATOR = 34031
const TIFFTAG_IT8CMYKEQUIVALENT = 34032
const TIFFTAG_FRAMECOUNT = 34232
const TIFFTAG_PHOTOSHOP = 34377
const TIFFTAG_EXIFIFD = 34665
const TIFFTAG_ICCPROFILE = 34675
const TIFFTAG_IMAGELAYER = 34732
const TIFFTAG_JBIGOPTIONS = 34750
const TIFFTAG_GPSIFD = 34853
const TIFFTAG_FAXRECVPARAMS = 34908
const TIFFTAG_FAXSUBADDRESS = 34909
const TIFFTAG_FAXRECVTIME = 34910
const TIFFTAG_FAXDCS = 34911
const TIFFTAG_STONITS = 37439
const TIFFTAG_FEDEX_EDR = 34929
const TIFFTAG_INTEROPERABILITYIFD = 40965
const TIFFTAG_LERC_PARAMETERS = 50674
const TIFFTAG_DNGVERSION = 50706
const TIFFTAG_DNGBACKWARDVERSION = 50707
const TIFFTAG_UNIQUECAMERAMODEL = 50708
const TIFFTAG_LOCALIZEDCAMERAMODEL = 50709
const TIFFTAG_CFAPLANECOLOR = 50710
const TIFFTAG_CFALAYOUT = 50711
const TIFFTAG_LINEARIZATIONTABLE = 50712
const TIFFTAG_BLACKLEVELREPEATDIM = 50713
const TIFFTAG_BLACKLEVEL = 50714
const TIFFTAG_BLACKLEVELDELTAH = 50715
const TIFFTAG_BLACKLEVELDELTAV = 50716
const TIFFTAG_WHITELEVEL = 50717
const TIFFTAG_DEFAULTSCALE = 50718
const TIFFTAG_DEFAULTCROPORIGIN = 50719
const TIFFTAG_DEFAULTCROPSIZE = 50720
const TIFFTAG_COLORMATRIX1 = 50721
const TIFFTAG_COLORMATRIX2 = 50722
const TIFFTAG_CAMERACALIBRATION1 = 50723
const TIFFTAG_CAMERACALIBRATION2 = 50724
const TIFFTAG_REDUCTIONMATRIX1 = 50725
const TIFFTAG_REDUCTIONMATRIX2 = 50726
const TIFFTAG_ANALOGBALANCE = 50727
const TIFFTAG_ASSHOTNEUTRAL = 50728
const TIFFTAG_ASSHOTWHITEXY = 50729
const TIFFTAG_BASELINEEXPOSURE = 50730
const TIFFTAG_BASELINENOISE = 50731
const TIFFTAG_BASELINESHARPNESS = 50732
const TIFFTAG_BAYERGREENSPLIT = 50733
const TIFFTAG_LINEARRESPONSELIMIT = 50734
const TIFFTAG_CAMERASERIALNUMBER = 50735
const TIFFTAG_LENSINFO = 50736
const TIFFTAG_CHROMABLURRADIUS = 50737
const TIFFTAG_ANTIALIASSTRENGTH = 50738
const TIFFTAG_SHADOWSCALE = 50739
const TIFFTAG_DNGPRIVATEDATA = 50740
const TIFFTAG_MAKERNOTESAFETY = 50741
const TIFFTAG_CALIBRATIONILLUMINANT1 = 50778
const TIFFTAG_CALIBRATIONILLUMINANT2 = 50779
const TIFFTAG_BESTQUALITYSCALE = 50780
const TIFFTAG_RAWDATAUNIQUEID = 50781
const TIFFTAG_ORIGINALRAWFILENAME = 50827
const TIFFTAG_ORIGINALRAWFILEDATA = 50828
const TIFFTAG_ACTIVEAREA = 50829
const TIFFTAG_MASKEDAREAS = 50830
const TIFFTAG_ASSHOTICCPROFILE = 50831
const TIFFTAG_ASSHOTPREPROFILEMATRIX = 50832
const TIFFTAG_CURRENTICCPROFILE = 50833
const TIFFTAG_CURRENTPREPROFILEMATRIX = 50834
const TIFFTAG_DCSHUESHIFTVALUES = 65535
const TIFFTAG_FAXMODE = 65536
const FAXMODE_CLASSIC = 0x0000
const FAXMODE_NORTC = 0x0001
const FAXMODE_NOEOL = 0x0002
const FAXMODE_BYTEALIGN = 0x0004
const FAXMODE_WORDALIGN = 0x0008
const FAXMODE_CLASSF = FAXMODE_NORTC
const TIFFTAG_JPEGQUALITY = 65537
const TIFFTAG_JPEGCOLORMODE = 65538
const JPEGCOLORMODE_RAW = 0x0000
const JPEGCOLORMODE_RGB = 0x0001
const TIFFTAG_JPEGTABLESMODE = 65539
const JPEGTABLESMODE_QUANT = 0x0001
const JPEGTABLESMODE_HUFF = 0x0002
const TIFFTAG_FAXFILLFUNC = 65540
const TIFFTAG_PIXARLOGDATAFMT = 65549
const PIXARLOGDATAFMT_8BIT = 0
const PIXARLOGDATAFMT_8BITABGR = 1
const PIXARLOGDATAFMT_11BITLOG = 2
const PIXARLOGDATAFMT_12BITPICIO = 3
const PIXARLOGDATAFMT_16BIT = 4
const PIXARLOGDATAFMT_FLOAT = 5
const TIFFTAG_DCSIMAGERTYPE = 65550
const DCSIMAGERMODEL_M3 = 0
const DCSIMAGERMODEL_M5 = 1
const DCSIMAGERMODEL_M6 = 2
const DCSIMAGERFILTER_IR = 0
const DCSIMAGERFILTER_MONO = 1
const DCSIMAGERFILTER_CFA = 2
const DCSIMAGERFILTER_OTHER = 3
const TIFFTAG_DCSINTERPMODE = 65551
const DCSINTERPMODE_NORMAL = 0x00
const DCSINTERPMODE_PREVIEW = 0x01
const TIFFTAG_DCSBALANCEARRAY = 65552
const TIFFTAG_DCSCORRECTMATRIX = 65553
const TIFFTAG_DCSGAMMA = 65554
const TIFFTAG_DCSTOESHOULDERPTS = 65555
const TIFFTAG_DCSCALIBRATIONFD = 65556
const TIFFTAG_ZIPQUALITY = 65557
const TIFFTAG_PIXARLOGQUALITY = 65558
const TIFFTAG_DCSCLIPRECTANGLE = 65559
const TIFFTAG_SGILOGDATAFMT = 65560
const SGILOGDATAFMT_FLOAT = 0
const SGILOGDATAFMT_16BIT = 1
const SGILOGDATAFMT_RAW = 2
const SGILOGDATAFMT_8BIT = 3
const TIFFTAG_SGILOGENCODE = 65561
const SGILOGENCODE_NODITHER = 0
const SGILOGENCODE_RANDITHER = 1
const TIFFTAG_LZMAPRESET = 65562
const TIFFTAG_PERSAMPLE = 65563
const PERSAMPLE_MERGED = 0
const PERSAMPLE_MULTI = 1
const TIFFTAG_ZSTD_LEVEL = 65564
const TIFFTAG_LERC_VERSION = 65565
const LERC_VERSION_2_4 = 4
const TIFFTAG_LERC_ADD_COMPRESSION = 65566
const LERC_ADD_COMPRESSION_NONE = 0
const LERC_ADD_COMPRESSION_DEFLATE = 1
const LERC_ADD_COMPRESSION_ZSTD = 2
const TIFFTAG_LERC_MAXZERROR = 65567
const TIFFTAG_WEBP_LEVEL = 65568
const TIFFTAG_WEBP_LOSSLESS = 65569
const EXIFTAG_EXPOSURETIME = 33434
const EXIFTAG_FNUMBER = 33437
const EXIFTAG_EXPOSUREPROGRAM = 34850
const EXIFTAG_SPECTRALSENSITIVITY = 34852
const EXIFTAG_ISOSPEEDRATINGS = 34855
const EXIFTAG_OECF = 34856
const EXIFTAG_EXIFVERSION = 36864
const EXIFTAG_DATETIMEORIGINAL = 36867
const EXIFTAG_DATETIMEDIGITIZED = 36868
const EXIFTAG_COMPONENTSCONFIGURATION = 37121
const EXIFTAG_COMPRESSEDBITSPERPIXEL = 37122
const EXIFTAG_SHUTTERSPEEDVALUE = 37377
const EXIFTAG_APERTUREVALUE = 37378
const EXIFTAG_BRIGHTNESSVALUE = 37379
const EXIFTAG_EXPOSUREBIASVALUE = 37380
const EXIFTAG_MAXAPERTUREVALUE = 37381
const EXIFTAG_SUBJECTDISTANCE = 37382
const EXIFTAG_METERINGMODE = 37383
const EXIFTAG_LIGHTSOURCE = 37384
const EXIFTAG_FLASH = 37385
const EXIFTAG_FOCALLENGTH = 37386
const EXIFTAG_SUBJECTAREA = 37396
const EXIFTAG_MAKERNOTE = 37500
const EXIFTAG_USERCOMMENT = 37510
const EXIFTAG_SUBSECTIME = 37520
const EXIFTAG_SUBSECTIMEORIGINAL = 37521
const EXIFTAG_SUBSECTIMEDIGITIZED = 37522
const EXIFTAG_FLASHPIXVERSION = 40960
const EXIFTAG_COLORSPACE = 40961
const EXIFTAG_PIXELXDIMENSION = 40962
const EXIFTAG_PIXELYDIMENSION = 40963
const EXIFTAG_RELATEDSOUNDFILE = 40964
const EXIFTAG_FLASHENERGY = 41483
const EXIFTAG_SPATIALFREQUENCYRESPONSE = 41484
const EXIFTAG_FOCALPLANEXRESOLUTION = 41486
const EXIFTAG_FOCALPLANEYRESOLUTION = 41487
const EXIFTAG_FOCALPLANERESOLUTIONUNIT = 41488
const EXIFTAG_SUBJECTLOCATION = 41492
const EXIFTAG_EXPOSUREINDEX = 41493
const EXIFTAG_SENSINGMETHOD = 41495
const EXIFTAG_FILESOURCE = 41728
const EXIFTAG_SCENETYPE = 41729
const EXIFTAG_CFAPATTERN = 41730
const EXIFTAG_CUSTOMRENDERED = 41985
const EXIFTAG_EXPOSUREMODE = 41986
const EXIFTAG_WHITEBALANCE = 41987
const EXIFTAG_DIGITALZOOMRATIO = 41988
const EXIFTAG_FOCALLENGTHIN35MMFILM = 41989
const EXIFTAG_SCENECAPTURETYPE = 41990
const EXIFTAG_GAINCONTROL = 41991
const EXIFTAG_CONTRAST = 41992
const EXIFTAG_SATURATION = 41993
const EXIFTAG_SHARPNESS = 41994
const EXIFTAG_DEVICESETTINGDESCRIPTION = 41995
const EXIFTAG_SUBJECTDISTANCERANGE = 41996
const EXIFTAG_IMAGEUNIQUEID = 42016
const int8 = UInt8
const uint8 = Cuchar
const int16 = Int16
const uint16 = UInt16
const int32 = Cint
const uint32 = UInt32
const int64 = Clong
const uint64 = Culong
const uint16_vap = Cint

struct TIFFHeaderCommon
    tiff_magic::uint16
    tiff_version::uint16
end

struct TIFFHeaderClassic
    tiff_magic::uint16
    tiff_version::uint16
    tiff_diroff::uint32
end

struct TIFFHeaderBig
    tiff_magic::uint16
    tiff_version::uint16
    tiff_offsetsize::uint16
    tiff_unused::uint16
    tiff_diroff::uint64
end

@cenum TIFFDataType::UInt32 begin
    TIFF_NOTYPE = 0
    TIFF_BYTE = 1
    TIFF_ASCII = 2
    TIFF_SHORT = 3
    TIFF_LONG = 4
    TIFF_RATIONAL = 5
    TIFF_SBYTE = 6
    TIFF_UNDEFINED = 7
    TIFF_SSHORT = 8
    TIFF_SLONG = 9
    TIFF_SRATIONAL = 10
    TIFF_FLOAT = 11
    TIFF_DOUBLE = 12
    TIFF_IFD = 13
    TIFF_LONG8 = 16
    TIFF_SLONG8 = 17
    TIFF_IFD8 = 18
end


# Skipping MacroDefinition: TIFF_INT16_T signed short
# Skipping MacroDefinition: TIFF_INT32_T signed int
# Skipping MacroDefinition: TIFF_INT64_T signed long
# Skipping MacroDefinition: TIFF_INT8_T signed char
# Skipping MacroDefinition: TIFF_UINT16_T unsigned short
# Skipping MacroDefinition: TIFF_UINT32_T unsigned int
# Skipping MacroDefinition: TIFF_UINT64_T unsigned long
# Skipping MacroDefinition: TIFF_UINT8_T unsigned char
# Skipping MacroDefinition: TIFF_SSIZE_T signed long

const TIFF_PTRDIFF_T = ptrdiff_t
const HAVE_IEEEFP = 1
const HOST_FILLORDER = FILLORDER_LSB2MSB
const HOST_BIGENDIAN = 0
const CCITT_SUPPORT = 1
const LOGLUV_SUPPORT = 1
const LZW_SUPPORT = 1
const NEXT_SUPPORT = 1
const PACKBITS_SUPPORT = 1
const PIXARLOG_SUPPORT = 1
const THUNDER_SUPPORT = 1
const ZIP_SUPPORT = 1
const STRIPCHOP_DEFAULT = TIFF_STRIPCHOP
const SUBIFD_SUPPORT = 1
const DEFAULT_EXTRASAMPLE_AS_ALPHA = 1
const CHECK_JPEG_YCBCR_SUBSAMPLING = 1
const MDI_SUPPORT = 1
const TIFFPRINT_NONE = 0x00
const TIFFPRINT_STRIPS = 0x01
const TIFFPRINT_CURVES = 0x02
const TIFFPRINT_COLORMAP = 0x04
const TIFFPRINT_JPEGQTABLES = 0x0100
const TIFFPRINT_JPEGACTABLES = 0x0200
const TIFFPRINT_JPEGDCTABLES = 0x0200
const D65_X0 = Float32(95.047)
const D65_Y0 = Float32(100.0)
const D65_Z0 = Float32(108.8827)
const D50_X0 = Float32(96.425)
const D50_Y0 = Float32(100.0)
const D50_Z0 = Float32(82.468)
const CIELABTORGB_TABLE_RANGE = 1500

# Skipping MacroDefinition: TIFFGetR ( abgr ) ( ( abgr ) & 0xff )
# Skipping MacroDefinition: TIFFGetG ( abgr ) ( ( ( abgr ) >> 8 ) & 0xff )
# Skipping MacroDefinition: TIFFGetB ( abgr ) ( ( ( abgr ) >> 16 ) & 0xff )
# Skipping MacroDefinition: TIFFGetA ( abgr ) ( ( ( abgr ) >> 24 ) & 0xff )

const LOGLUV_PUBLIC = 1
const TIFF_ANY = TIFF_NOTYPE
const TIFF_VARIABLE = -1
const TIFF_SPP = -2
const TIFF_VARIABLE2 = -3
const FIELD_CUSTOM = 65
const U_NEU = 0.210526316
const V_NEU = 0.473684211
const UVSCALE = 410.0
const tiff = Cvoid
const TIFF = tiff
const tmsize_t = Clong
const toff_t = uint64
const ttag_t = uint32
const tdir_t = uint16
const tsample_t = uint16
const tstrile_t = uint32
const tstrip_t = tstrile_t
const ttile_t = tstrile_t
const tsize_t = tmsize_t
const tdata_t = Ptr{Cvoid}
const thandle_t = Ptr{Cvoid}
const TIFFRGBValue = Cuchar

struct TIFFDisplay
    d_mat::NTuple{3, NTuple{3, Cfloat}}
    d_YCR::Cfloat
    d_YCG::Cfloat
    d_YCB::Cfloat
    d_Vrwr::uint32
    d_Vrwg::uint32
    d_Vrwb::uint32
    d_Y0R::Cfloat
    d_Y0G::Cfloat
    d_Y0B::Cfloat
    d_gammaR::Cfloat
    d_gammaG::Cfloat
    d_gammaB::Cfloat
end

struct TIFFYCbCrToRGB
    clamptab::Ptr{TIFFRGBValue}
    Cr_r_tab::Ptr{Cint}
    Cb_b_tab::Ptr{Cint}
    Cr_g_tab::Ptr{int32}
    Cb_g_tab::Ptr{int32}
    Y_tab::Ptr{int32}
end

struct TIFFCIELabToRGB
    range::Cint
    rstep::Cfloat
    gstep::Cfloat
    bstep::Cfloat
    X0::Cfloat
    Y0::Cfloat
    Z0::Cfloat
    display::TIFFDisplay
    Yr2r::NTuple{1501, Cfloat}
    Yg2g::NTuple{1501, Cfloat}
    Yb2b::NTuple{1501, Cfloat}
end

struct ANONYMOUS1_put
    any::Ptr{Cvoid}
end

struct _TIFFRGBAImage
    tif::Ptr{TIFF}
    stoponerr::Cint
    isContig::Cint
    alpha::Cint
    width::uint32
    height::uint32
    bitspersample::uint16
    samplesperpixel::uint16
    orientation::uint16
    req_orientation::uint16
    photometric::uint16
    redcmap::Ptr{uint16}
    greencmap::Ptr{uint16}
    bluecmap::Ptr{uint16}
    get::Ptr{Cvoid}
    put::ANONYMOUS1_put
    Map::Ptr{TIFFRGBValue}
    BWmap::Ptr{Ptr{uint32}}
    PALmap::Ptr{Ptr{uint32}}
    ycbcr::Ptr{TIFFYCbCrToRGB}
    cielab::Ptr{TIFFCIELabToRGB}
    UaToAa::Ptr{uint8}
    Bitdepth16To8::Ptr{uint8}
    row_offset::Cint
    col_offset::Cint
end

const TIFFRGBAImage = _TIFFRGBAImage
const tileContigRoutine = Ptr{Cvoid}
const tileSeparateRoutine = Ptr{Cvoid}

struct ANONYMOUS2_put
    any::Ptr{Cvoid}
end

const TIFFInitMethod = Ptr{Cvoid}

struct TIFFCodec
    name::Cstring
    scheme::uint16
    init::TIFFInitMethod
end

const TIFFErrorHandler = Ptr{Cvoid}
const TIFFErrorHandlerExt = Ptr{Cvoid}
const TIFFReadWriteProc = Ptr{Cvoid}
const TIFFSeekProc = Ptr{Cvoid}
const TIFFCloseProc = Ptr{Cvoid}
const TIFFSizeProc = Ptr{Cvoid}
const TIFFMapFileProc = Ptr{Cvoid}
const TIFFUnmapFileProc = Ptr{Cvoid}
const TIFFExtendProc = Ptr{Cvoid}
const _TIFFField = Cvoid
const TIFFField = _TIFFField
const _TIFFFieldArray = Cvoid
const TIFFFieldArray = _TIFFFieldArray
const TIFFVSetMethod = Ptr{Cvoid}
const TIFFVGetMethod = Ptr{Cvoid}
const TIFFPrintMethod = Ptr{Cvoid}

struct TIFFTagMethods
    vsetfield::TIFFVSetMethod
    vgetfield::TIFFVGetMethod
    printdir::TIFFPrintMethod
end

struct TIFFFieldInfo
    field_tag::ttag_t
    field_readcount::Int16
    field_writecount::Int16
    field_type::TIFFDataType
    field_bit::UInt16
    field_oktochange::Cuchar
    field_passcount::Cuchar
    field_name::Cstring
end

const TIFFLIB_VERSION_STR = "LIBTIFF, Version 4.0.10\nCopyright (c) 1988-1996 Sam Leffler\nCopyright (c) 1991-1996 Silicon Graphics, Inc."
const TIFFLIB_VERSION = 20181110