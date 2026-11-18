.class Lcom/ali/watchmem/core/WatchmemManager$Holder;
.super Ljava/lang/Object;
.source "WatchmemManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/watchmem/core/WatchmemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ali/watchmem/core/WatchmemManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/ali/watchmem/core/WatchmemManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ali/watchmem/core/WatchmemManager;-><init>(Lcom/ali/watchmem/core/WatchmemManager$1;)V

    sput-object v0, Lcom/ali/watchmem/core/WatchmemManager$Holder;->INSTANCE:Lcom/ali/watchmem/core/WatchmemManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lcom/ali/watchmem/core/WatchmemManager;
    .locals 1

    .line 55
    sget-object v0, Lcom/ali/watchmem/core/WatchmemManager$Holder;->INSTANCE:Lcom/ali/watchmem/core/WatchmemManager;

    return-object v0
.end method
