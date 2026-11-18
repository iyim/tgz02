.class public Lcom/taobao/orange/OConfig$Builder;
.super Ljava/lang/Object;
.source "OConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/orange/OConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private ackHost:Ljava/lang/String;

.field private ackVips:[Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private appSecret:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private authCode:Ljava/lang/String;

.field private dcHost:Ljava/lang/String;

.field private dcVips:[Ljava/lang/String;

.field private env:I

.field private indexUpdateMode:I

.field private probeHosts:[Ljava/lang/String;

.field private reportAck:Z

.field private serverType:I

.field private statUsedConfig:Z

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget-object v0, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v0}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v0

    iput v0, p0, Lcom/taobao/orange/OConfig$Builder;->env:I

    .line 96
    sget-object v0, Lcom/taobao/orange/OConstant$SERVER;->TAOBAO:Lcom/taobao/orange/OConstant$SERVER;

    invoke-virtual {v0}, Lcom/taobao/orange/OConstant$SERVER;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/taobao/orange/OConfig$Builder;->serverType:I

    .line 97
    sget-object v0, Lcom/taobao/orange/OConstant$UPDMODE;->O_XMD:Lcom/taobao/orange/OConstant$UPDMODE;

    invoke-virtual {v0}, Lcom/taobao/orange/OConstant$UPDMODE;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/taobao/orange/OConfig$Builder;->indexUpdateMode:I

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/taobao/orange/OConfig$Builder;->reportAck:Z

    .line 99
    iput-boolean v0, p0, Lcom/taobao/orange/OConfig$Builder;->statUsedConfig:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/taobao/orange/OConfig;
    .locals 3

    .line 260
    new-instance v0, Lcom/taobao/orange/OConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/orange/OConfig;-><init>(Lcom/taobao/orange/OConfig$1;)V

    .line 261
    iget v1, p0, Lcom/taobao/orange/OConfig$Builder;->env:I

    iput v1, v0, Lcom/taobao/orange/OConfig;->env:I

    .line 262
    iget-object v1, p0, Lcom/taobao/orange/OConfig$Builder;->appKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/orange/OConfig;->appKey:Ljava/lang/String;

    .line 263
    iget-object v1, p0, Lcom/taobao/orange/OConfig$Builder;->appSecret:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/orange/OConfig;->appSecret:Ljava/lang/String;

    .line 264
    iget-object v1, p0, Lcom/taobao/orange/OConfig$Builder;->authCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/orange/OConfig;->authCode:Ljava/lang/String;

    .line 265
    iget-object v1, p0, Lcom/taobao/orange/OConfig$Builder;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/orange/OConfig;->userId:Ljava/lang/String;

    .line 266
    iget-object v1, p0, Lcom/taobao/orange/OConfig$Builder;->appVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/orange/OConfig;->appVersion:Ljava/lang/String;

    .line 267
    iget v1, p0, Lcom/taobao/orange/OConfig$Builder;->serverType:I

    iput v1, v0, Lcom/taobao/orange/OConfig;->serverType:I

    .line 268
    iget v1, p0, Lcom/taobao/orange/OConfig$Builder;->indexUpdateMode:I

    iput v1, v0, Lcom/taobao/orange/OConfig;->indexUpdateMode:I

    .line 269
    iget-boolean v1, p0, Lcom/taobao/orange/OConfig$Builder;->reportAck:Z

    iput-boolean v1, v0, Lcom/taobao/orange/OConfig;->reportAck:Z

    .line 270
    iget-boolean v1, p0, Lcom/taobao/orange/OConfig$Builder;->statUsedConfig:Z

    iput-boolean v1, v0, Lcom/taobao/orange/OConfig;->statUsedConfig:Z

    .line 271
    iget-object v1, p0, Lcom/taobao/orange/OConfig$Builder;->probeHosts:[Ljava/lang/String;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    iput-object v1, v0, Lcom/taobao/orange/OConfig;->probeHosts:[Ljava/lang/String;

    goto :goto_1

    .line 272
    :cond_1
    :goto_0
    sget-object v1, Lcom/taobao/orange/OConstant;->PROBE_HOSTS:[[Ljava/lang/String;

    iget v2, p0, Lcom/taobao/orange/OConfig$Builder;->env:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/taobao/orange/OConfig;->probeHosts:[Ljava/lang/String;

    .line 276
    :goto_1
    iget-object v1, p0, Lcom/taobao/orange/OConfig$Builder;->dcHost:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 277
    iget v1, p0, Lcom/taobao/orange/OConfig$Builder;->serverType:I

    sget-object v2, Lcom/taobao/orange/OConstant$SERVER;->TAOBAO:Lcom/taobao/orange/OConstant$SERVER;

    invoke-virtual {v2}, Lcom/taobao/orange/OConstant$SERVER;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/taobao/orange/OConstant;->DC_TAOBAO_HOSTS:[Ljava/lang/String;

    iget v2, p0, Lcom/taobao/orange/OConfig$Builder;->env:I

    aget-object v1, v1, v2

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/taobao/orange/OConstant;->DC_YOUKU_HOSTS:[Ljava/lang/String;

    iget v2, p0, Lcom/taobao/orange/OConfig$Builder;->env:I

    aget-object v1, v1, v2

    :goto_2
    iput-object v1, v0, Lcom/taobao/orange/OConfig;->dcHost:Ljava/lang/String;

    goto :goto_3

    .line 279
    :cond_3
    iget-object v1, p0, Lcom/taobao/orange/OConfig$Builder;->dcHost:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/orange/OConfig;->dcHost:Ljava/lang/String;

    .line 281
    :goto_3
    iget-object v1, p0, Lcom/taobao/orange/OConfig$Builder;->dcVips:[Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/orange/OConfig;->dcVips:[Ljava/lang/String;

    .line 282
    iget-object v1, p0, Lcom/taobao/orange/OConfig$Builder;->ackHost:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 283
    iget v1, p0, Lcom/taobao/orange/OConfig$Builder;->serverType:I

    sget-object v2, Lcom/taobao/orange/OConstant$SERVER;->TAOBAO:Lcom/taobao/orange/OConstant$SERVER;

    invoke-virtual {v2}, Lcom/taobao/orange/OConstant$SERVER;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/taobao/orange/OConstant;->ACK_TAOBAO_HOSTS:[Ljava/lang/String;

    iget v2, p0, Lcom/taobao/orange/OConfig$Builder;->env:I

    aget-object v1, v1, v2

    goto :goto_4

    :cond_4
    sget-object v1, Lcom/taobao/orange/OConstant;->ACK_YOUKU_HOSTS:[Ljava/lang/String;

    iget v2, p0, Lcom/taobao/orange/OConfig$Builder;->env:I

    aget-object v1, v1, v2

    :goto_4
    iput-object v1, v0, Lcom/taobao/orange/OConfig;->ackHost:Ljava/lang/String;

    goto :goto_5

    .line 285
    :cond_5
    iget-object v1, p0, Lcom/taobao/orange/OConfig$Builder;->ackHost:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/orange/OConfig;->ackHost:Ljava/lang/String;

    .line 287
    :goto_5
    iget-object v1, p0, Lcom/taobao/orange/OConfig$Builder;->ackVips:[Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/orange/OConfig;->ackVips:[Ljava/lang/String;

    return-object v0
.end method

.method public setAckHost(Ljava/lang/String;)Lcom/taobao/orange/OConfig$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 247
    iput-object p1, p0, Lcom/taobao/orange/OConfig$Builder;->ackHost:Ljava/lang/String;

    return-object p0
.end method

.method public setAckVips([Ljava/lang/String;)Lcom/taobao/orange/OConfig$Builder;
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param

    .line 255
    iput-object p1, p0, Lcom/taobao/orange/OConfig$Builder;->ackVips:[Ljava/lang/String;

    return-object p0
.end method

.method public setAppKey(Ljava/lang/String;)Lcom/taobao/orange/OConfig$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 124
    iput-object p1, p0, Lcom/taobao/orange/OConfig$Builder;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method public setAppSecret(Ljava/lang/String;)Lcom/taobao/orange/OConfig$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 142
    iput-object p1, p0, Lcom/taobao/orange/OConfig$Builder;->appSecret:Ljava/lang/String;

    return-object p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/taobao/orange/OConfig$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 133
    iput-object p1, p0, Lcom/taobao/orange/OConfig$Builder;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthCode(Ljava/lang/String;)Lcom/taobao/orange/OConfig$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 151
    iput-object p1, p0, Lcom/taobao/orange/OConfig$Builder;->authCode:Ljava/lang/String;

    return-object p0
.end method

.method public setDcHost(Ljava/lang/String;)Lcom/taobao/orange/OConfig$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 231
    iput-object p1, p0, Lcom/taobao/orange/OConfig$Builder;->dcHost:Ljava/lang/String;

    return-object p0
.end method

.method public setDcVips([Ljava/lang/String;)Lcom/taobao/orange/OConfig$Builder;
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param

    .line 239
    iput-object p1, p0, Lcom/taobao/orange/OConfig$Builder;->dcVips:[Ljava/lang/String;

    return-object p0
.end method

.method public setEnv(I)Lcom/taobao/orange/OConfig$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x2L
        .end annotation
    .end param

    .line 115
    iput p1, p0, Lcom/taobao/orange/OConfig$Builder;->env:I

    return-object p0
.end method

.method public setIndexUpdateMode(I)Lcom/taobao/orange/OConfig$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x2L
        .end annotation
    .end param

    .line 178
    iput p1, p0, Lcom/taobao/orange/OConfig$Builder;->indexUpdateMode:I

    return-object p0
.end method

.method public setOnlineAckHost(Ljava/lang/String;)Lcom/taobao/orange/OConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    iput-object p1, p0, Lcom/taobao/orange/OConfig$Builder;->ackHost:Ljava/lang/String;

    return-object p0
.end method

.method public setOnlineHost(Ljava/lang/String;)Lcom/taobao/orange/OConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/taobao/orange/OConfig$Builder;->dcHost:Ljava/lang/String;

    return-object p0
.end method

.method public setProbeHosts([Ljava/lang/String;)Lcom/taobao/orange/OConfig$Builder;
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param

    .line 205
    iput-object p1, p0, Lcom/taobao/orange/OConfig$Builder;->probeHosts:[Ljava/lang/String;

    return-object p0
.end method

.method public setReportAck(Z)Lcom/taobao/orange/OConfig$Builder;
    .locals 0

    .line 187
    iput-boolean p1, p0, Lcom/taobao/orange/OConfig$Builder;->reportAck:Z

    return-object p0
.end method

.method public setServerType(I)Lcom/taobao/orange/OConfig$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x1L
        .end annotation
    .end param

    .line 169
    iput p1, p0, Lcom/taobao/orange/OConfig$Builder;->serverType:I

    return-object p0
.end method

.method public setStatUsedConfig(Z)Lcom/taobao/orange/OConfig$Builder;
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcom/taobao/orange/OConfig$Builder;->statUsedConfig:Z

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/taobao/orange/OConfig$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 160
    iput-object p1, p0, Lcom/taobao/orange/OConfig$Builder;->userId:Ljava/lang/String;

    return-object p0
.end method
