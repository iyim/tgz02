.class final Lcom/alibaba/ailabs/genie/musicplayer/migu/MiGuUtils$1;
.super Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSSuccess;
.source "MiGuUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/migu/MiGuUtils;->requestToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSSuccess<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSSuccess;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic lambda$onSuccess$74(J)V
    .locals 0

    .line 35
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/migu/MiGuUtils;->requestToken()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onSuccess(Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;)V
    .locals 4

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOpenUuid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->getOpenUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " getSecretToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->getSecretToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIGU-MiGuUtils"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExpireTime() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->getExpireTime()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->getExpireTime()I

    move-result v0

    const/16 v2, 0x12c

    if-le v0, v2, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->getExpireTime()I

    move-result v0

    sub-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    .line 35
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/migu/-$$Lambda$MiGuUtils$1$VL4BVOKBiSmDQju07WHnCPkcIXs;->INSTANCE:Lcom/alibaba/ailabs/genie/musicplayer/migu/-$$Lambda$MiGuUtils$1$VL4BVOKBiSmDQju07WHnCPkcIXs;

    invoke-static {v2, v3, v0}, Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil;->timer(JLcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil$IRxNext;)V

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->getSecretToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/migu/MiGuUtils;->initMiGuSdk(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/migu/MiGuUtils$1;->onSuccess(Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;)V

    return-void
.end method
