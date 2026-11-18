.class Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$2;
.super Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;
.source "DetailsViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->loadSingleContactsByUserId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback<",
        "Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse<",
        "Lcom/alibaba/ailabs/genie/contacts/model/Contacts;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$2;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFailure$21$DetailsViewModel$2(Ljava/lang/String;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->getInstance()Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->getFriendDetailsByUserId(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$2;->val$userId:Ljava/lang/String;

    new-instance p2, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DetailsViewModel$2$p8LXTwy_Bi38JCwaw0Op2Coi0kQ;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DetailsViewModel$2$p8LXTwy_Bi38JCwaw0Op2Coi0kQ;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$2;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/utils/taskpool/FileTaskPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsBaseResponse;)V
    .locals 0

    .line 52
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$2;->onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse<",
            "Lcom/alibaba/ailabs/genie/contacts/model/Contacts;",
            ">;)V"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
