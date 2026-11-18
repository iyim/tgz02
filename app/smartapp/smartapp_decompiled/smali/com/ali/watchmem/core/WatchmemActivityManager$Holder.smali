.class Lcom/ali/watchmem/core/WatchmemActivityManager$Holder;
.super Ljava/lang/Object;
.source "WatchmemActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/watchmem/core/WatchmemActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/ali/watchmem/core/WatchmemActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 167
    new-instance v0, Lcom/ali/watchmem/core/WatchmemActivityManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ali/watchmem/core/WatchmemActivityManager;-><init>(Lcom/ali/watchmem/core/WatchmemActivityManager$1;)V

    sput-object v0, Lcom/ali/watchmem/core/WatchmemActivityManager$Holder;->INSTANCE:Lcom/ali/watchmem/core/WatchmemActivityManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
