.class final Lcom/uc/base/net/unet/UNetContext$1;
.super Ljava/lang/Object;
.source "UNetContext.java"

# interfaces
.implements Lcom/alibaba/mbg/unet/IProxyDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uc/base/net/unet/UNetContext;->configDefaultProxy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public generateProxyInfo(Ljava/lang/String;)Lcom/alibaba/mbg/unet/IProxyDelegate$ProxyInfo;
    .locals 1

    .line 60
    invoke-static {p1}, Lcom/uc/base/net/unet/util/ProxyMap;->getProxyInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uc/base/net/unet/UNetContext;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/uc/base/net/unet/UNetContext;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uc/base/net/unet/UNetContext;->access$200()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/base/net/unet/UNetContext;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uc/base/net/unet/UNetContext;->access$200()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 71
    :cond_1
    new-instance v0, Lcom/alibaba/mbg/unet/IProxyDelegate$ProxyInfo;

    invoke-direct {v0}, Lcom/alibaba/mbg/unet/IProxyDelegate$ProxyInfo;-><init>()V

    .line 72
    iput-object p1, v0, Lcom/alibaba/mbg/unet/IProxyDelegate$ProxyInfo;->proxyServer:Ljava/lang/String;

    return-object v0
.end method

.method public onRequestComplete(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
