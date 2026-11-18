.class public Lcom/alibaba/ailabs/genie/contacts/repository/DeviceContactsRepository;
.super Ljava/lang/Object;
.source "DeviceContactsRepository.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static updateDeviceContacts(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback<",
            "Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsBaseResponse;",
            ">;)V"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v1, "mtop.alibaba.aicloud.t.device.updateName"

    .line 26
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 27
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 29
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 30
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 31
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/app/ContactsApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->getAuthInfoStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "authInfo"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "uuid"

    .line 32
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "name"

    .line 33
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/util/Map;)V

    .line 35
    new-instance p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->asyncCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
