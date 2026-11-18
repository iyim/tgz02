.class public Lunet/org/chromium/base/library_loader/NativeLibraries;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lunet/org/chromium/base/annotations/SuppressFBWarnings;
.end annotation


# static fields
.field public static final BUILD_ID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIBRARIES:[Ljava/lang/String;

.field public static final LIBRARIES_SIZE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MD5:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sEnableLinkerTests:Z = false

.field public static sUseLibraryInZipFile:Z = false

.field public static sUseLinker:Z = false

.field public static sVersionNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "unet_arm64-v8a"

    const-string/jumbo v1, "unet"

    .line 8
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lunet/org/chromium/base/library_loader/NativeLibraries;->LIBRARIES:[Ljava/lang/String;

    .line 10
    new-instance v0, Lunet/org/chromium/base/library_loader/NativeLibraries$1;

    invoke-direct {v0}, Lunet/org/chromium/base/library_loader/NativeLibraries$1;-><init>()V

    sput-object v0, Lunet/org/chromium/base/library_loader/NativeLibraries;->LIBRARIES_SIZE:Ljava/util/HashMap;

    .line 12
    new-instance v0, Lunet/org/chromium/base/library_loader/NativeLibraries$2;

    invoke-direct {v0}, Lunet/org/chromium/base/library_loader/NativeLibraries$2;-><init>()V

    sput-object v0, Lunet/org/chromium/base/library_loader/NativeLibraries;->MD5:Ljava/util/HashMap;

    .line 14
    new-instance v0, Lunet/org/chromium/base/library_loader/NativeLibraries$3;

    invoke-direct {v0}, Lunet/org/chromium/base/library_loader/NativeLibraries$3;-><init>()V

    sput-object v0, Lunet/org/chromium/base/library_loader/NativeLibraries;->BUILD_ID:Ljava/util/HashMap;

    const-string v0, "2.1.1.10"

    .line 16
    sput-object v0, Lunet/org/chromium/base/library_loader/NativeLibraries;->sVersionNumber:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
