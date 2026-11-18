.class public abstract Lcom/alibaba/ailabs/genie/custom/contacts/repository/callback/ContactsCallback;
.super Ljava/lang/Object;
.source "ContactsCallback.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/ailabs/genie/custom/contacts/repository/response/ContactsBaseResponse;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",meg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ResultCode;->isNoNetWork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_network_error:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/callback/ContactsCallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/callback/ContactsCallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public abstract onFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Lcom/alibaba/ailabs/genie/custom/contacts/repository/response/ContactsBaseResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "TT;>;)V"
        }
    .end annotation

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/response/ContactsBaseResponse;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/response/ContactsBaseResponse;->getStatusCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/repository/response/ContactsBaseResponse;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/callback/ContactsCallback;->onSuccess(Lcom/alibaba/ailabs/genie/custom/contacts/repository/response/ContactsBaseResponse;)V

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/response/ContactsBaseResponse;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/response/ContactsBaseResponse;->getMsgCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/repository/response/ContactsBaseResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/response/ContactsBaseResponse;->getMsgInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/callback/ContactsCallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
