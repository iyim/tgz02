.class public final Lunet/org/chromium/base/helper/Trace;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:Z = true

.field public static final b:[Ljava/lang/String;

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "Graphics"

    const-string v1, "Input"

    const-string v2, "View"

    const-string v3, "WebView"

    const-string v4, "Window Manager"

    const-string v5, "Activity Manager"

    const-string v6, "Sync Manager"

    const-string v7, "Audio"

    const-string v8, "Video"

    const-string v9, "Camera"

    .line 38
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lunet/org/chromium/base/helper/Trace;->b:[Ljava/lang/String;

    :try_start_0
    const-string v0, "android.os.Trace"

    .line 51
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    sput-object v0, Lunet/org/chromium/base/helper/Trace;->c:Ljava/lang/Class;

    const-string v1, "traceBegin"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lunet/org/chromium/base/helper/Trace;->d:Ljava/lang/reflect/Method;

    .line 54
    sget-object v0, Lunet/org/chromium/base/helper/Trace;->c:Ljava/lang/Class;

    const-string v1, "traceEnd"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lunet/org/chromium/base/helper/Trace;->e:Ljava/lang/reflect/Method;

    .line 56
    sget-object v0, Lunet/org/chromium/base/helper/Trace;->c:Ljava/lang/Class;

    const-string v1, "traceCounter"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lunet/org/chromium/base/helper/Trace;->f:Ljava/lang/reflect/Method;

    .line 58
    sget-object v0, Lunet/org/chromium/base/helper/Trace;->c:Ljava/lang/Class;

    const-string v1, "isTagEnabled"

    new-array v2, v6, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lunet/org/chromium/base/helper/Trace;->g:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
