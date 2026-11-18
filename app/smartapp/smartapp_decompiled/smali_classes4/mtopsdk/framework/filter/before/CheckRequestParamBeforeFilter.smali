.class public Lmtopsdk/framework/filter/before/CheckRequestParamBeforeFilter;
.super Ljava/lang/Object;
.source "CheckRequestParamBeforeFilter.java"

# interfaces
.implements Lmtopsdk/framework/filter/IBeforeFilter;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.CheckRequestParamBeforeFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private checkRequiredParam(Lmtopsdk/framework/domain/MtopContext;)Z
    .locals 7

    .line 46
    iget-object v0, p1, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 47
    iget-object v1, p1, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 48
    iget-object v2, p1, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ANDROID_SYS_MTOPCONTEXT_INIT_ERROR"

    if-nez v0, :cond_0

    const-string v3, "mtopRequest is invalid.mtopRequest=null"

    .line 54
    new-instance v1, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-direct {v1, v4, v3}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->isLegalRequest()Z

    move-result v5

    if-nez v5, :cond_1

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mtopRequest is invalid. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    new-instance v1, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6, v4, v3}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const-string v3, "MtopNetworkProp is invalid.property=null"

    .line 60
    new-instance v1, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6, v4, v3}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 63
    :goto_0
    iput-object v1, p1, Lmtopsdk/framework/domain/MtopContext;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 64
    invoke-static {v3}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "[checkRequiredParam]"

    const-string v6, "mtopsdk.CheckRequestParamBeforeFilter"

    if-eqz v4, :cond_3

    .line 65
    sget-object v4, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v4}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 71
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_4
    invoke-static {p1}, Lmtopsdk/framework/util/FilterUtils;->handleExceptionCallBack(Lmtopsdk/framework/domain/MtopContext;)V

    .line 79
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalSpdySslSwitchOpen()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "[checkRequiredParam]MTOP SSL switch is false"

    .line 80
    invoke-static {v6, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p1, p1, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    sget-object v0, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTP:Lmtopsdk/mtop/domain/ProtocolEnum;

    iput-object v0, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

    :cond_5
    if-nez v1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method public doBefore(Lmtopsdk/framework/domain/MtopContext;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lmtopsdk/framework/filter/before/CheckRequestParamBeforeFilter;->checkRequiredParam(Lmtopsdk/framework/domain/MtopContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CONTINUE"

    return-object p1

    :cond_0
    const-string p1, "STOP"

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "mtopsdk.CheckRequestParamBeforeFilter"

    return-object v0
.end method
