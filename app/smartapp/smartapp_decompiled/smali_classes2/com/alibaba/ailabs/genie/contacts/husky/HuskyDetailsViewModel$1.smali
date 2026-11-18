.class Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel$1;
.super Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;
.source "HuskyDetailsViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;->loadHuskyDetailsByName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback<",
        "Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse<",
        "Lcom/alibaba/ailabs/genie/contacts/model/HuskyInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;->access$000(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsBaseResponse;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel$1;->onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse<",
            "Lcom/alibaba/ailabs/genie/contacts/model/HuskyInfo;",
            ">;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;->access$000(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
