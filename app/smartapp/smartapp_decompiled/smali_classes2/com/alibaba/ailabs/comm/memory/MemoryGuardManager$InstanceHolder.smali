.class Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager$InstanceHolder;
.super Ljava/lang/Object;
.source "MemoryGuardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field public static instance:Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;-><init>(Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager$1;)V

    sput-object v0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager$InstanceHolder;->instance:Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
