.class public Lcom/taobao/alivfssdk/fresco/common/memory/MemoryUiTrimmableRegistry;
.super Ljava/lang/Object;
.source "MemoryUiTrimmableRegistry.java"


# static fields
.field private static final sUiTrimmables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/taobao/alivfssdk/fresco/common/memory/MemoryUiTrimmable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryUiTrimmableRegistry;->sUiTrimmables:Ljava/util/Set;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static iterable()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/taobao/alivfssdk/fresco/common/memory/MemoryUiTrimmable;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryUiTrimmableRegistry;->sUiTrimmables:Ljava/util/Set;

    return-object v0
.end method

.method public static registerUiTrimmable(Lcom/taobao/alivfssdk/fresco/common/memory/MemoryUiTrimmable;)V
    .locals 1

    .line 26
    sget-object v0, Lcom/taobao/alivfssdk/fresco/common/memory/MemoryUiTrimmableRegistry;->sUiTrimmables:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
