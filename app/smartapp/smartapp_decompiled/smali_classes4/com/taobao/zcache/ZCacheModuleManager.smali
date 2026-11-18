.class public Lcom/taobao/zcache/ZCacheModuleManager;
.super Ljava/lang/Object;
.source "ZCacheModuleManager.java"


# static fields
.field static intelligentImpl:Lcom/taobao/zcache/intelligent/IIntelligent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getIntelligent()Lcom/taobao/zcache/intelligent/IIntelligent;
    .locals 1

    .line 25
    sget-object v0, Lcom/taobao/zcache/ZCacheModuleManager;->intelligentImpl:Lcom/taobao/zcache/intelligent/IIntelligent;

    return-object v0
.end method

.method public static setInitialPacks(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/taobao/zcache/core/IZCacheCore;->setInitialPacks(Ljava/util/Set;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setIntelligent(Lcom/taobao/zcache/intelligent/IIntelligent;)V
    .locals 0

    .line 18
    sput-object p0, Lcom/taobao/zcache/ZCacheModuleManager;->intelligentImpl:Lcom/taobao/zcache/intelligent/IIntelligent;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
