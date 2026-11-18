.class public final Lcom/blankj/ALog;
.super Ljava/lang/Object;
.source "ALog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/ALog$TagHead;,
        Lcom/blankj/ALog$Config;
    }
.end annotation


# static fields
.field public static final A:I = 0x7

.field private static final ARGS:Ljava/lang/String; = "args"

.field private static final BOTTOM_BORDER:Ljava/lang/String; = "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

.field public static final D:I = 0x3

.field public static final E:I = 0x6

.field private static final FILE:I = 0x10

.field private static final FILE_SEP:Ljava/lang/String;

.field private static final FORMAT:Ljava/text/Format;

.field public static final I:I = 0x4

.field private static final JSON:I = 0x20

.field private static final LEFT_BORDER:Ljava/lang/String; = "\u2551 "

.field private static final LINE_SEP:Ljava/lang/String;

.field private static final MAX_LEN:I = 0xfa0

.field private static final NULL:Ljava/lang/String; = "null"

.field private static final NULL_TIPS:Ljava/lang/String; = "Log with null object."

.field private static final SPLIT_BORDER:Ljava/lang/String; = "\u255f\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final T:[C

.field private static final TOP_BORDER:Ljava/lang/String; = "\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

.field public static final V:I = 0x2

.field public static final W:I = 0x5

.field private static final XML:I = 0x30

.field private static sConfig:Lcom/blankj/ALog$Config;

.field private static sConsoleFilter:I

.field private static sDefaultDir:Ljava/lang/String;

.field private static sDir:Ljava/lang/String;

.field private static sExecutor:Ljava/util/concurrent/ExecutorService;

.field private static sFileFilter:I

.field private static sFilePrefix:Ljava/lang/String;

.field private static sGlobalTag:Ljava/lang/String;

.field private static sLog2ConsoleSwitch:Z

.field private static sLog2FileSwitch:Z

.field private static sLogBorderSwitch:Z

.field private static sLogHeadSwitch:Z

.field private static sLogSwitch:Z

.field private static sStackDeep:I

.field private static sTagIsSpace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    .line 59
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/blankj/ALog;->T:[C

    const-string v0, "util"

    .line 68
    sput-object v0, Lcom/blankj/ALog;->sFilePrefix:Ljava/lang/String;

    const/4 v0, 0x1

    .line 69
    sput-boolean v0, Lcom/blankj/ALog;->sLogSwitch:Z

    .line 70
    sput-boolean v0, Lcom/blankj/ALog;->sLog2ConsoleSwitch:Z

    const/4 v1, 0x0

    .line 71
    sput-object v1, Lcom/blankj/ALog;->sGlobalTag:Ljava/lang/String;

    .line 72
    sput-boolean v0, Lcom/blankj/ALog;->sTagIsSpace:Z

    .line 73
    sput-boolean v0, Lcom/blankj/ALog;->sLogHeadSwitch:Z

    const/4 v1, 0x0

    .line 74
    sput-boolean v1, Lcom/blankj/ALog;->sLog2FileSwitch:Z

    .line 75
    sput-boolean v0, Lcom/blankj/ALog;->sLogBorderSwitch:Z

    const/4 v1, 0x2

    .line 76
    sput v1, Lcom/blankj/ALog;->sConsoleFilter:I

    .line 77
    sput v1, Lcom/blankj/ALog;->sFileFilter:I

    .line 78
    sput v0, Lcom/blankj/ALog;->sStackDeep:I

    const-string v0, "file.separator"

    .line 80
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blankj/ALog;->FILE_SEP:Ljava/lang/String;

    const-string v0, "line.separator"

    .line 81
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blankj/ALog;->LINE_SEP:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MM-dd HH:mm:ss.SSS "

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/blankj/ALog;->FORMAT:Ljava/text/Format;

    return-void

    :array_0
    .array-data 2
        0x56s
        0x44s
        0x49s
        0x57s
        0x45s
        0x41s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 3

    .line 149
    sget-object v0, Lcom/blankj/ALog;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x7

    invoke-static {p0, v0, v1}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    .line 153
    invoke-static {v0, p0, p1}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/blankj/ALog;->sDefaultDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/blankj/ALog;->sDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    sput-object p0, Lcom/blankj/ALog;->sDir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    sput-object p0, Lcom/blankj/ALog;->sDefaultDir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/blankj/ALog;->sFilePrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    sput-object p0, Lcom/blankj/ALog;->sFilePrefix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/blankj/ALog;->sLogBorderSwitch:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0

    .line 45
    sput-boolean p0, Lcom/blankj/ALog;->sLogBorderSwitch:Z

    return p0
.end method

.method static synthetic access$1300()I
    .locals 1

    .line 45
    sget v0, Lcom/blankj/ALog;->sConsoleFilter:I

    return v0
.end method

.method static synthetic access$1302(I)I
    .locals 0

    .line 45
    sput p0, Lcom/blankj/ALog;->sConsoleFilter:I

    return p0
.end method

.method static synthetic access$1400()I
    .locals 1

    .line 45
    sget v0, Lcom/blankj/ALog;->sFileFilter:I

    return v0
.end method

.method static synthetic access$1402(I)I
    .locals 0

    .line 45
    sput p0, Lcom/blankj/ALog;->sFileFilter:I

    return p0
.end method

.method static synthetic access$1500()I
    .locals 1

    .line 45
    sget v0, Lcom/blankj/ALog;->sStackDeep:I

    return v0
.end method

.method static synthetic access$1502(I)I
    .locals 0

    .line 45
    sput p0, Lcom/blankj/ALog;->sStackDeep:I

    return p0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/blankj/ALog;->LINE_SEP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700()[C
    .locals 1

    .line 45
    sget-object v0, Lcom/blankj/ALog;->T:[C

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/blankj/ALog;->FILE_SEP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/blankj/ALog;->sLogSwitch:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 45
    sput-boolean p0, Lcom/blankj/ALog;->sLogSwitch:Z

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/blankj/ALog;->sLog2ConsoleSwitch:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    .line 45
    sput-boolean p0, Lcom/blankj/ALog;->sLog2ConsoleSwitch:Z

    return p0
.end method

.method static synthetic access$500(Ljava/lang/String;)Z
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/blankj/ALog;->isSpace(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/blankj/ALog;->sGlobalTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    sput-object p0, Lcom/blankj/ALog;->sGlobalTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/blankj/ALog;->sTagIsSpace:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    .line 45
    sput-boolean p0, Lcom/blankj/ALog;->sTagIsSpace:Z

    return p0
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/blankj/ALog;->sLogHeadSwitch:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    .line 45
    sput-boolean p0, Lcom/blankj/ALog;->sLogHeadSwitch:Z

    return p0
.end method

.method static synthetic access$900()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/blankj/ALog;->sLog2FileSwitch:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    .line 45
    sput-boolean p0, Lcom/blankj/ALog;->sLog2FileSwitch:Z

    return p0
.end method

.method private static createOrExistsDir(Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 427
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static createOrExistsFile(Ljava/lang/String;)Z
    .locals 2

    .line 415
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0

    .line 417
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/ALog;->createOrExistsDir(Ljava/io/File;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    .line 419
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 421
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 3

    .line 117
    sget-object v0, Lcom/blankj/ALog;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x3

    invoke-static {p0, v0, v1}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 121
    invoke-static {v0, p0, p1}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e(Ljava/lang/Object;)V
    .locals 3

    .line 141
    sget-object v0, Lcom/blankj/ALog;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x6

    invoke-static {p0, v0, v1}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    .line 145
    invoke-static {v0, p0, p1}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static file(ILjava/lang/Object;)V
    .locals 3

    or-int/lit8 p0, p0, 0x10

    .line 161
    sget-object v0, Lcom/blankj/ALog;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static file(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    or-int/lit8 p0, p0, 0x10

    const/4 v0, 0x1

    .line 169
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static file(Ljava/lang/Object;)V
    .locals 3

    .line 157
    sget-object v0, Lcom/blankj/ALog;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 p0, 0x13

    invoke-static {p0, v0, v1}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static file(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    .line 165
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 p1, 0x13

    invoke-static {p1, p0, v0}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static formatJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "{"

    .line 292
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "["

    .line 294
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static formatXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ">"

    .line 305
    :try_start_0
    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    .line 306
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 307
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    const-string v4, "indent"

    const-string v5, "yes"

    .line 308
    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "{http://xml.apache.org/xslt}indent-amount"

    const-string v5, "4"

    .line 309
    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v3, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 311
    invoke-virtual {v2}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/blankj/ALog;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public static getConfig()Lcom/blankj/ALog$Config;
    .locals 1

    .line 105
    sget-object v0, Lcom/blankj/ALog;->sConfig:Lcom/blankj/ALog$Config;

    return-object v0
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 3

    .line 125
    sget-object v0, Lcom/blankj/ALog;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x4

    invoke-static {p0, v0, v1}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    .line 129
    invoke-static {v0, p0, p1}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static init(Landroid/content/Context;)Lcom/blankj/ALog$Config;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 98
    sget-object v0, Lcom/blankj/ALog;->sConfig:Lcom/blankj/ALog$Config;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/blankj/ALog$Config;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/blankj/ALog$Config;-><init>(Landroid/content/Context;Lcom/blankj/ALog$1;)V

    sput-object v0, Lcom/blankj/ALog;->sConfig:Lcom/blankj/ALog$Config;

    .line 101
    :cond_0
    sget-object p0, Lcom/blankj/ALog;->sConfig:Lcom/blankj/ALog$Config;

    return-object p0
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 432
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 433
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static json(ILjava/lang/String;)V
    .locals 3

    or-int/lit8 p0, p0, 0x20

    .line 177
    sget-object v0, Lcom/blankj/ALog;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static json(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    or-int/lit8 p0, p0, 0x20

    const/4 v0, 0x1

    .line 185
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static json(Ljava/lang/String;)V
    .locals 3

    .line 173
    sget-object v0, Lcom/blankj/ALog;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 p0, 0x23

    invoke-static {p0, v0, v1}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static json(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 181
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 p1, 0x23

    invoke-static {p1, p0, v0}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 205
    sget-boolean v0, Lcom/blankj/ALog;->sLogSwitch:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/blankj/ALog;->sLog2ConsoleSwitch:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/blankj/ALog;->sLog2FileSwitch:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p0, 0xf

    and-int/lit16 p0, p0, 0xf0

    .line 207
    sget v1, Lcom/blankj/ALog;->sConsoleFilter:I

    if-ge v0, v1, :cond_1

    sget v1, Lcom/blankj/ALog;->sFileFilter:I

    if-ge v0, v1, :cond_1

    return-void

    .line 208
    :cond_1
    invoke-static {p1}, Lcom/blankj/ALog;->processTagAndHead(Ljava/lang/String;)Lcom/blankj/ALog$TagHead;

    move-result-object p1

    .line 209
    invoke-static {p0, p2}, Lcom/blankj/ALog;->processBody(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 210
    sget-boolean v1, Lcom/blankj/ALog;->sLog2ConsoleSwitch:Z

    const/16 v2, 0x10

    if-eqz v1, :cond_2

    sget v1, Lcom/blankj/ALog;->sConsoleFilter:I

    if-lt v0, v1, :cond_2

    if-eq p0, v2, :cond_2

    .line 211
    iget-object v1, p1, Lcom/blankj/ALog$TagHead;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/blankj/ALog$TagHead;->consoleHead:[Ljava/lang/String;

    invoke-static {v0, v1, v3, p2}, Lcom/blankj/ALog;->print2Console(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_2
    sget-boolean v1, Lcom/blankj/ALog;->sLog2FileSwitch:Z

    if-nez v1, :cond_3

    if-ne p0, v2, :cond_4

    :cond_3
    sget p0, Lcom/blankj/ALog;->sFileFilter:I

    if-lt v0, p0, :cond_4

    .line 214
    iget-object p0, p1, Lcom/blankj/ALog$TagHead;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/blankj/ALog$TagHead;->fileHead:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/blankj/ALog;->print2File(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static print2Console(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 319
    invoke-static {p0, p1, v0}, Lcom/blankj/ALog;->printBorder(ILjava/lang/String;Z)V

    .line 320
    invoke-static {p0, p1, p2}, Lcom/blankj/ALog;->printHead(ILjava/lang/String;[Ljava/lang/String;)V

    .line 321
    invoke-static {p0, p1, p3}, Lcom/blankj/ALog;->printMsg(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 322
    invoke-static {p0, p1, p2}, Lcom/blankj/ALog;->printBorder(ILjava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static print2File(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 370
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 371
    sget-object v1, Lcom/blankj/ALog;->FORMAT:Ljava/text/Format;

    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 372
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    .line 373
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/blankj/ALog;->sDir:Ljava/lang/String;

    if-nez v3, :cond_0

    sget-object v3, Lcom/blankj/ALog;->sDefaultDir:Ljava/lang/String;

    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/blankj/ALog;->sFilePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-static {v1}, Lcom/blankj/ALog;->createOrExistsFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 376
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "log to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed!"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 379
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/blankj/ALog;->T:[C

    add-int/lit8 p0, p0, -0x2

    aget-char p0, v0, p0

    .line 381
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "/"

    .line 382
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/blankj/ALog;->LINE_SEP:Ljava/lang/String;

    .line 385
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 387
    sget-object p2, Lcom/blankj/ALog;->sExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez p2, :cond_2

    .line 388
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    sput-object p2, Lcom/blankj/ALog;->sExecutor:Ljava/util/concurrent/ExecutorService;

    .line 390
    :cond_2
    sget-object p2, Lcom/blankj/ALog;->sExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/blankj/ALog$1;

    invoke-direct {v0, v1, p0, p1}, Lcom/blankj/ALog$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static printBorder(ILjava/lang/String;Z)V
    .locals 1

    .line 326
    sget-boolean v0, Lcom/blankj/ALog;->sLogBorderSwitch:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-string p2, "\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    goto :goto_0

    :cond_0
    const-string p2, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    .line 327
    :goto_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static printHead(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 5

    if-eqz p2, :cond_2

    .line 333
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 334
    sget-boolean v3, Lcom/blankj/ALog;->sLogBorderSwitch:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2551 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {p0, p1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "\u255f\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    .line 336
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private static printMsg(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 341
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 342
    div-int/lit16 v1, v0, 0xfa0

    if-lez v1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit16 v4, v3, 0xfa0

    .line 346
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v3}, Lcom/blankj/ALog;->printSubMsg(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_0
    if-eq v3, v0, :cond_2

    .line 350
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/blankj/ALog;->printSubMsg(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 353
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/blankj/ALog;->printSubMsg(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static printSubMsg(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 358
    sget-boolean v0, Lcom/blankj/ALog;->sLogBorderSwitch:Z

    if-nez v0, :cond_0

    .line 359
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    sget-object v0, Lcom/blankj/ALog;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 364
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2551 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static varargs processBody(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_5

    .line 264
    array-length v0, p1

    const-string v1, "null"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 265
    aget-object p1, p1, v2

    if-nez p1, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/16 p1, 0x20

    if-ne p0, p1, :cond_1

    .line 268
    invoke-static {v1}, Lcom/blankj/ALog;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_1
    const/16 p1, 0x30

    if-ne p0, p1, :cond_6

    .line 270
    invoke-static {v1}, Lcom/blankj/ALog;->formatXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 273
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_4

    .line 275
    aget-object v3, p1, v2

    const-string v4, "args"

    .line 276
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    .line 277
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    .line 279
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    .line 280
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_3

    move-object v3, v1

    goto :goto_2

    .line 281
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/blankj/ALog;->LINE_SEP:Ljava/lang/String;

    .line 282
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 284
    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    const-string v1, "Log with null object."

    :cond_6
    :goto_3
    return-object v1
.end method

.method private static processTagAndHead(Ljava/lang/String;)Lcom/blankj/ALog$TagHead;
    .locals 15

    .line 219
    sget-boolean v0, Lcom/blankj/ALog;->sTagIsSpace:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/blankj/ALog;->sLogHeadSwitch:Z

    if-nez v0, :cond_0

    .line 220
    sget-object p0, Lcom/blankj/ALog;->sGlobalTag:Ljava/lang/String;

    goto/16 :goto_1

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x3

    .line 223
    aget-object v2, v0, v1

    .line 224
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 226
    sget-boolean v6, Lcom/blankj/ALog;->sTagIsSpace:Z

    if-eqz v6, :cond_1

    invoke-static {p0}, Lcom/blankj/ALog;->isSpace(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object p0, v4

    .line 227
    :cond_1
    sget-boolean v4, Lcom/blankj/ALog;->sLogHeadSwitch:Z

    if-eqz v4, :cond_4

    .line 228
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    .line 229
    new-instance v6, Ljava/util/Formatter;

    invoke-direct {v6}, Ljava/util/Formatter;-><init>()V

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v4, v8, v5

    .line 232
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    aput-object v3, v8, v9

    .line 234
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    const-string v2, "%s, %s(%s:%d)"

    .line 230
    invoke-virtual {v6, v2, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    .line 235
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    sget v6, Lcom/blankj/ALog;->sStackDeep:I

    if-gt v6, v10, :cond_2

    .line 238
    new-instance v0, Lcom/blankj/ALog$TagHead;

    new-array v1, v10, [Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-direct {v0, p0, v1, v3}, Lcom/blankj/ALog$TagHead;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 240
    :cond_2
    array-length v8, v0

    sub-int/2addr v8, v1

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    .line 241
    aput-object v2, v6, v5

    .line 242
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v9

    .line 243
    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4}, Ljava/util/Formatter;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v8, v10, [Ljava/lang/Object;

    const-string v11, ""

    aput-object v11, v8, v5

    invoke-virtual {v4, v2, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    array-length v4, v6

    const/4 v8, 0x1

    :goto_0
    if-ge v8, v4, :cond_3

    add-int/lit8 v11, v8, 0x3

    .line 245
    aget-object v11, v0, v11

    .line 246
    new-instance v12, Ljava/util/Formatter;

    invoke-direct {v12}, Ljava/util/Formatter;-><init>()V

    new-array v13, v7, [Ljava/lang/Object;

    aput-object v2, v13, v5

    .line 249
    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v10

    .line 250
    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v9

    .line 251
    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v13, v1

    const-string v11, "%s%s(%s:%d)"

    .line 247
    invoke-virtual {v12, v11, v13}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v11

    .line 252
    invoke-virtual {v11}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 254
    :cond_3
    new-instance v0, Lcom/blankj/ALog$TagHead;

    invoke-direct {v0, p0, v6, v3}, Lcom/blankj/ALog$TagHead;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 258
    :cond_4
    :goto_1
    new-instance v0, Lcom/blankj/ALog$TagHead;

    const/4 v1, 0x0

    const-string v2, ": "

    invoke-direct {v0, p0, v1, v2}, Lcom/blankj/ALog$TagHead;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static v(Ljava/lang/Object;)V
    .locals 3

    .line 109
    sget-object v0, Lcom/blankj/ALog;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x2

    invoke-static {p0, v0, v1}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 113
    invoke-static {v0, p0, p1}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static w(Ljava/lang/Object;)V
    .locals 3

    .line 133
    sget-object v0, Lcom/blankj/ALog;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x5

    invoke-static {p0, v0, v1}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    .line 137
    invoke-static {v0, p0, p1}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static xml(ILjava/lang/String;)V
    .locals 3

    or-int/lit8 p0, p0, 0x30

    .line 193
    sget-object v0, Lcom/blankj/ALog;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static xml(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    or-int/lit8 p0, p0, 0x30

    const/4 v0, 0x1

    .line 201
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static xml(Ljava/lang/String;)V
    .locals 3

    .line 189
    sget-object v0, Lcom/blankj/ALog;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 p0, 0x33

    invoke-static {p0, v0, v1}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static xml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 197
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 p1, 0x33

    invoke-static {p1, p0, v0}, Lcom/blankj/ALog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
