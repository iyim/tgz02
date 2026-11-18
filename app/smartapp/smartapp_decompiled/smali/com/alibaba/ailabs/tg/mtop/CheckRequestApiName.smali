.class public Lcom/alibaba/ailabs/tg/mtop/CheckRequestApiName;
.super Ljava/lang/Object;
.source "CheckRequestApiName.java"

# interfaces
.implements Lmtopsdk/framework/filter/IBeforeFilter;


# static fields
.field private static final APINAME_PRE1_SUFFIX:Ljava/lang/String; = ".pre1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public doBefore(Lmtopsdk/framework/domain/MtopContext;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "STOP"

    return-object p1

    .line 29
    :cond_0
    iget-object p1, p1, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 30
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 32
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/DefaultGlobalMtopSetting;->getMtopConfig()Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->getEnvMode()Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v1

    .line 33
    sget-object v2, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    const-string v3, ".pre1"

    if-ne v1, v2, :cond_2

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 38
    :cond_1
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_2
    sget-object v2, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    if-eq v1, v2, :cond_3

    sget-object v2, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    if-ne v1, v2, :cond_4

    .line 42
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    if-lez v1, :cond_4

    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    :cond_4
    :goto_0
    const-string p1, "CONTINUE"

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "CheckRequestApiName"

    return-object v0
.end method
