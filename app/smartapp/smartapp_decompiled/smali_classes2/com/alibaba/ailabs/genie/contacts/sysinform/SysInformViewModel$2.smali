.class Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel$2;
.super Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;
.source "SysInformViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->sendSysInform(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback<",
        "Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse<",
        "Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",meg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "contacts_inform"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsBaseResponse;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel$2;->onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse<",
            "Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;",
            ">;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->access$100(Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
