.class public final enum Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;
.super Ljava/lang/Enum;
.source "MemoryTrimType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

.field public static final enum OnAppBackgrounded:Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

.field public static final enum OnCloseToDalvikHeapLimit:Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

.field public static final enum OnSystemLowMemoryWhileAppInBackground:Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

.field public static final enum OnSystemLowMemoryWhileAppInForeground:Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;


# instance fields
.field private final mSuggestedTrimRatio:D


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 24
    new-instance v0, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const/4 v3, 0x0

    const-string v4, "OnCloseToDalvikHeapLimit"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;->OnCloseToDalvikHeapLimit:Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

    .line 29
    new-instance v0, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

    const/4 v4, 0x1

    const-string v5, "OnSystemLowMemoryWhileAppInForeground"

    invoke-direct {v0, v5, v4, v1, v2}, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;->OnSystemLowMemoryWhileAppInForeground:Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

    .line 34
    new-instance v0, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x2

    const-string v6, "OnSystemLowMemoryWhileAppInBackground"

    invoke-direct {v0, v6, v5, v1, v2}, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;->OnSystemLowMemoryWhileAppInBackground:Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

    .line 39
    new-instance v0, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

    const/4 v6, 0x3

    const-string v7, "OnAppBackgrounded"

    invoke-direct {v0, v7, v6, v1, v2}, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;->OnAppBackgrounded:Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

    const/4 v0, 0x4

    .line 19
    new-array v0, v0, [Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

    sget-object v1, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;->OnCloseToDalvikHeapLimit:Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;->OnSystemLowMemoryWhileAppInForeground:Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;->OnSystemLowMemoryWhileAppInBackground:Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;->OnAppBackgrounded:Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;->$VALUES:[Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-wide p3, p0, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;->mSuggestedTrimRatio:D

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;
    .locals 1

    .line 19
    const-class v0, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

    return-object p0
.end method

.method public static values()[Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;
    .locals 1

    .line 19
    sget-object v0, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;->$VALUES:[Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

    invoke-virtual {v0}, [Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;

    return-object v0
.end method


# virtual methods
.method public getSuggestedTrimRatio()D
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimType;->mSuggestedTrimRatio:D

    return-wide v0
.end method
