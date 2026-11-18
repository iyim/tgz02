.class public abstract Lmtopsdk/security/AbstractSignImpl;
.super Ljava/lang/Object;
.source "AbstractSignImpl.java"

# interfaces
.implements Lmtopsdk/security/ISign;


# instance fields
.field envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

.field mtopConfig:Lmtopsdk/mtop/global/MtopConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lmtopsdk/security/AbstractSignImpl;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    .line 18
    iput-object v0, p0, Lmtopsdk/security/AbstractSignImpl;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    return-void
.end method


# virtual methods
.method getAuthCode()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lmtopsdk/security/AbstractSignImpl;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lmtopsdk/mtop/global/MtopConfig;->authCode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getAvmpSign(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method getEnv()I
    .locals 4

    .line 29
    iget-object v0, p0, Lmtopsdk/security/AbstractSignImpl;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 32
    :cond_0
    sget-object v0, Lmtopsdk/security/AbstractSignImpl$1;->$SwitchMap$mtopsdk$mtop$domain$EnvModeEnum:[I

    iget-object v2, p0, Lmtopsdk/security/AbstractSignImpl;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/EnvModeEnum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    return v3

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method getInstanceId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lmtopsdk/security/AbstractSignImpl;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lmtopsdk/mtop/global/MtopConfig;->instanceId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getSecBodyDataEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Lmtopsdk/mtop/global/MtopConfig;)V
    .locals 0
    .param p1    # Lmtopsdk/mtop/global/MtopConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    iput-object p1, p0, Lmtopsdk/security/AbstractSignImpl;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    .line 23
    iget-object p1, p0, Lmtopsdk/security/AbstractSignImpl;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p1, Lmtopsdk/mtop/global/MtopConfig;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    iput-object p1, p0, Lmtopsdk/security/AbstractSignImpl;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    :cond_0
    return-void
.end method
