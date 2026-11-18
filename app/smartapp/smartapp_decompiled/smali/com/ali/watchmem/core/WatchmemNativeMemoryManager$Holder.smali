.class Lcom/ali/watchmem/core/WatchmemNativeMemoryManager$Holder;
.super Ljava/lang/Object;
.source "WatchmemNativeMemoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;-><init>(Lcom/ali/watchmem/core/WatchmemNativeMemoryManager$1;)V

    sput-object v0, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager$Holder;->INSTANCE:Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
