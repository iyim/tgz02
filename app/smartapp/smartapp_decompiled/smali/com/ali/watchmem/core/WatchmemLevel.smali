.class public final enum Lcom/ali/watchmem/core/WatchmemLevel;
.super Ljava/lang/Enum;
.source "WatchmemLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ali/watchmem/core/WatchmemLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ali/watchmem/core/WatchmemLevel;

.field public static final enum CRITICAL:Lcom/ali/watchmem/core/WatchmemLevel;

.field public static final enum DANGEROUS:Lcom/ali/watchmem/core/WatchmemLevel;

.field public static final enum HIGH:Lcom/ali/watchmem/core/WatchmemLevel;

.field public static final enum NORMAL:Lcom/ali/watchmem/core/WatchmemLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lcom/ali/watchmem/core/WatchmemLevel;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/ali/watchmem/core/WatchmemLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->NORMAL:Lcom/ali/watchmem/core/WatchmemLevel;

    .line 9
    new-instance v0, Lcom/ali/watchmem/core/WatchmemLevel;

    const/4 v2, 0x1

    const-string v3, "HIGH"

    invoke-direct {v0, v3, v2}, Lcom/ali/watchmem/core/WatchmemLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->HIGH:Lcom/ali/watchmem/core/WatchmemLevel;

    .line 10
    new-instance v0, Lcom/ali/watchmem/core/WatchmemLevel;

    const/4 v3, 0x2

    const-string v4, "DANGEROUS"

    invoke-direct {v0, v4, v3}, Lcom/ali/watchmem/core/WatchmemLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->DANGEROUS:Lcom/ali/watchmem/core/WatchmemLevel;

    .line 11
    new-instance v0, Lcom/ali/watchmem/core/WatchmemLevel;

    const/4 v4, 0x3

    const-string v5, "CRITICAL"

    invoke-direct {v0, v5, v4}, Lcom/ali/watchmem/core/WatchmemLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->CRITICAL:Lcom/ali/watchmem/core/WatchmemLevel;

    const/4 v0, 0x4

    .line 7
    new-array v0, v0, [Lcom/ali/watchmem/core/WatchmemLevel;

    sget-object v5, Lcom/ali/watchmem/core/WatchmemLevel;->NORMAL:Lcom/ali/watchmem/core/WatchmemLevel;

    aput-object v5, v0, v1

    sget-object v1, Lcom/ali/watchmem/core/WatchmemLevel;->HIGH:Lcom/ali/watchmem/core/WatchmemLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ali/watchmem/core/WatchmemLevel;->DANGEROUS:Lcom/ali/watchmem/core/WatchmemLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ali/watchmem/core/WatchmemLevel;->CRITICAL:Lcom/ali/watchmem/core/WatchmemLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->$VALUES:[Lcom/ali/watchmem/core/WatchmemLevel;

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

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ali/watchmem/core/WatchmemLevel;
    .locals 1

    .line 7
    const-class v0, Lcom/ali/watchmem/core/WatchmemLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ali/watchmem/core/WatchmemLevel;

    return-object p0
.end method

.method public static values()[Lcom/ali/watchmem/core/WatchmemLevel;
    .locals 1

    .line 7
    sget-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->$VALUES:[Lcom/ali/watchmem/core/WatchmemLevel;

    invoke-virtual {v0}, [Lcom/ali/watchmem/core/WatchmemLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ali/watchmem/core/WatchmemLevel;

    return-object v0
.end method
