.class public Lcom/alibaba/ailabs/genie/musicplayer/migu/MiGuUtils;
.super Ljava/lang/Object;
.source "MiGuUtils.java"


# static fields
.field private static final FIVE_MINUTES:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "MIGU-MiGuUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static initMiGuSdk(Ljava/lang/String;)V
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMiGuSdk() token is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIGU-MiGuUtils"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/rich/czlylibary/sdk/MiguCzlySDK;->getInstance()Lcom/rich/czlylibary/sdk/MiguCzlySDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rich/czlylibary/sdk/MiguCzlySDK;->setSecretToken(Ljava/lang/String;)Lcom/rich/czlylibary/sdk/MiguCzlySDK;

    move-result-object p0

    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rich/czlylibary/sdk/MiguCzlySDK;->init(Landroid/app/Application;)Lcom/rich/czlylibary/sdk/MiguCzlySDK;

    return-void
.end method

.method static synthetic lambda$requestToken$73(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MIGU-MiGuUtils"

    invoke-static {p1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static requestToken()V
    .locals 4

    .line 22
    new-instance v0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;

    const-string v1, "AliGenie.Auth"

    const-string v2, "ThirdTokenRefresh"

    const-string v3, "{\"thirdName\":\"migumusic\"}"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/migu/-$$Lambda$MiGuUtils$NBGiVFbly9y9FYclDF8CPQW1aBw;->INSTANCE:Lcom/alibaba/ailabs/genie/musicplayer/migu/-$$Lambda$MiGuUtils$NBGiVFbly9y9FYclDF8CPQW1aBw;

    .line 24
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->setFailCallback(Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSFailed;)Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/migu/MiGuUtils$1;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/musicplayer/migu/MiGuUtils$1;-><init>()V

    .line 26
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->setSuccessCallback(Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSSuccess;)Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->sendEventToServer()V

    return-void
.end method
