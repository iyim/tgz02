.class public final enum Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;
.super Ljava/lang/Enum;
.source "InstantPerformanceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

.field public static final enum LOAD_BAD_RESOURCE:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

.field public static final enum LOAD_ERROR_VALIDITY:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

.field public static final enum LOAD_FOR_FILE_NOT_FOUND:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

.field public static final enum LOAD_LOCAL:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

.field public static final enum LOAD_NORMAL:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

.field public static final enum LOAD_OTHER_ERROR:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;


# instance fields
.field private code:Ljava/lang/String;

.field private msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 15
    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    const/4 v1, 0x0

    const-string v2, "LOAD_OTHER_ERROR"

    const-string v3, "-2"

    const-string v4, "OTHER_ERROR"

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_OTHER_ERROR:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    .line 16
    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    const/4 v2, 0x1

    const-string v3, "LOAD_FOR_FILE_NOT_FOUND"

    const-string v4, "-1"

    invoke-direct {v0, v3, v2, v4, v3}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_FOR_FILE_NOT_FOUND:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    .line 17
    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    const/4 v3, 0x2

    const-string v4, "LOAD_NORMAL"

    const-string v5, "0"

    const-string v6, "ZCache-D"

    invoke-direct {v0, v4, v3, v5, v6}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_NORMAL:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    .line 18
    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    const/4 v4, 0x3

    const-string v5, "LOAD_LOCAL"

    const-string v6, "1"

    const-string v7, "ZCache"

    invoke-direct {v0, v5, v4, v6, v7}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_LOCAL:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    .line 19
    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    const/4 v5, 0x4

    const-string v6, "LOAD_ERROR_VALIDITY"

    const-string v7, "2"

    invoke-direct {v0, v6, v5, v7, v6}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_ERROR_VALIDITY:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    .line 20
    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    const/4 v6, 0x5

    const-string v7, "LOAD_BAD_RESOURCE"

    const-string v8, "3"

    invoke-direct {v0, v7, v6, v8, v7}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_BAD_RESOURCE:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    const/4 v0, 0x6

    .line 14
    new-array v0, v0, [Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    sget-object v7, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_OTHER_ERROR:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    aput-object v7, v0, v1

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_FOR_FILE_NOT_FOUND:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_NORMAL:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_LOCAL:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_ERROR_VALIDITY:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_BAD_RESOURCE:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    aput-object v1, v0, v6

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->$VALUES:[Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->code:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->msg:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;
    .locals 1

    .line 14
    const-class v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    return-object p0
.end method

.method public static values()[Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;
    .locals 1

    .line 14
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->$VALUES:[Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    invoke-virtual {v0}, [Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->msg:Ljava/lang/String;

    return-object v0
.end method
