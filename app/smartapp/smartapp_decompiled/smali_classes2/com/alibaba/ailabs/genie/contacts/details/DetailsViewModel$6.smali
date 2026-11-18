.class Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$6;
.super Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;
.source "DetailsViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->updateBlock(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback<",
        "Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsBaseResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->access$400(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsBaseResponse;)V
    .locals 1

    .line 161
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->access$400(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
