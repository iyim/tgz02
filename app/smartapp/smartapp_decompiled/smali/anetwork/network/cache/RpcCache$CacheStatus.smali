.class public final enum Lanetwork/network/cache/RpcCache$CacheStatus;
.super Ljava/lang/Enum;
.source "RpcCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/network/cache/RpcCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CacheStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lanetwork/network/cache/RpcCache$CacheStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lanetwork/network/cache/RpcCache$CacheStatus;

.field public static final enum FRESH:Lanetwork/network/cache/RpcCache$CacheStatus;

.field public static final enum NEED_UPDATE:Lanetwork/network/cache/RpcCache$CacheStatus;

.field public static final enum TIMEOUT:Lanetwork/network/cache/RpcCache$CacheStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Lanetwork/network/cache/RpcCache$CacheStatus;

    const/4 v1, 0x0

    const-string v2, "FRESH"

    invoke-direct {v0, v2, v1}, Lanetwork/network/cache/RpcCache$CacheStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/network/cache/RpcCache$CacheStatus;->FRESH:Lanetwork/network/cache/RpcCache$CacheStatus;

    new-instance v0, Lanetwork/network/cache/RpcCache$CacheStatus;

    const/4 v2, 0x1

    const-string v3, "NEED_UPDATE"

    invoke-direct {v0, v3, v2}, Lanetwork/network/cache/RpcCache$CacheStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/network/cache/RpcCache$CacheStatus;->NEED_UPDATE:Lanetwork/network/cache/RpcCache$CacheStatus;

    new-instance v0, Lanetwork/network/cache/RpcCache$CacheStatus;

    const/4 v3, 0x2

    const-string v4, "TIMEOUT"

    invoke-direct {v0, v4, v3}, Lanetwork/network/cache/RpcCache$CacheStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/network/cache/RpcCache$CacheStatus;->TIMEOUT:Lanetwork/network/cache/RpcCache$CacheStatus;

    const/4 v0, 0x3

    .line 24
    new-array v0, v0, [Lanetwork/network/cache/RpcCache$CacheStatus;

    sget-object v4, Lanetwork/network/cache/RpcCache$CacheStatus;->FRESH:Lanetwork/network/cache/RpcCache$CacheStatus;

    aput-object v4, v0, v1

    sget-object v1, Lanetwork/network/cache/RpcCache$CacheStatus;->NEED_UPDATE:Lanetwork/network/cache/RpcCache$CacheStatus;

    aput-object v1, v0, v2

    sget-object v1, Lanetwork/network/cache/RpcCache$CacheStatus;->TIMEOUT:Lanetwork/network/cache/RpcCache$CacheStatus;

    aput-object v1, v0, v3

    sput-object v0, Lanetwork/network/cache/RpcCache$CacheStatus;->$VALUES:[Lanetwork/network/cache/RpcCache$CacheStatus;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lanetwork/network/cache/RpcCache$CacheStatus;
    .locals 1

    .line 24
    const-class v0, Lanetwork/network/cache/RpcCache$CacheStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lanetwork/network/cache/RpcCache$CacheStatus;

    return-object p0
.end method

.method public static values()[Lanetwork/network/cache/RpcCache$CacheStatus;
    .locals 1

    .line 24
    sget-object v0, Lanetwork/network/cache/RpcCache$CacheStatus;->$VALUES:[Lanetwork/network/cache/RpcCache$CacheStatus;

    invoke-virtual {v0}, [Lanetwork/network/cache/RpcCache$CacheStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanetwork/network/cache/RpcCache$CacheStatus;

    return-object v0
.end method
