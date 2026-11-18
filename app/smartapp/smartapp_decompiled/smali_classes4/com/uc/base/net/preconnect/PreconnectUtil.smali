.class public Lcom/uc/base/net/preconnect/PreconnectUtil;
.super Ljava/lang/Object;
.source "PreconnectUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static preConnect(Ljava/lang/String;ZI)Z
    .locals 1

    .line 15
    invoke-static {}, Lcom/uc/base/net/NetworkManager;->getInstance()Lcom/uc/base/net/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/base/net/NetworkManager;->getNetFuncDelegate()Lcom/uc/base/net/INetFuncDelegate;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/uc/base/net/INetFuncDelegate;->preConnect(Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method
