.class public Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository;
.super Ljava/lang/Object;
.source "CmRtcRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnQueryRemainTimeCallback;,
        Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnTokenCallback;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "CmRtcRepository"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getToken(Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnTokenCallback;)V
    .locals 4

    .line 26
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository;->TAG:Ljava/lang/String;

    const-string v1, "getToken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v1, "mtop.alibaba.aicloud.t.hNChinaMobileGetInfo.getToken"

    .line 28
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 29
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 31
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 32
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 33
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v2

    const-string v3, "authInfo"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/util/Map;)V

    .line 37
    new-instance v1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnTokenCallback;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public static queryRemainTime(Ljava/lang/String;Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnQueryRemainTimeCallback;)V
    .locals 4

    .line 66
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository;->TAG:Ljava/lang/String;

    const-string v1, "queryRemainTime"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v1, "mtop.alibaba.aicloud.t.hNChinaMobileGetInfo.queryRemainTime"

    .line 68
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 69
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 71
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 72
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "authInfo"

    .line 73
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "token"

    .line 74
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/util/Map;)V

    .line 76
    new-instance p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p0

    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$2;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$2;-><init>(Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnQueryRemainTimeCallback;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    :goto_0
    return-void
.end method
