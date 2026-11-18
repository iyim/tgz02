.class Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$4;
.super Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;
.source "DetailsViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->loadSingleDevice(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback<",
        "Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse<",
        "Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$4;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$4;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFailure$23$DetailsViewModel$4(Ljava/lang/String;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$4;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->access$200(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->getInstance()Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->getDeviceDetailsByUuid(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$4;->val$uuid:Ljava/lang/String;

    new-instance p2, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DetailsViewModel$4$iZKHvlyrnzgOp3jwMW5do3BZTSw;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DetailsViewModel$4$iZKHvlyrnzgOp3jwMW5do3BZTSw;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$4;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/utils/taskpool/FileTaskPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsBaseResponse;)V
    .locals 0

    .line 84
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$4;->onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse<",
            "Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;",
            ">;)V"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$4;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->access$200(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
