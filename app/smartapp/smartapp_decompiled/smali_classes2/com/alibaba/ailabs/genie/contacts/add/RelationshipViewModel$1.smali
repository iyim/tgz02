.class Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel$1;
.super Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;
.source "RelationshipViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->loadRelationshipList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback<",
        "Lcom/alibaba/ailabs/genie/contacts/repository/response/RelationshipsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 39
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

    const-string p2, "contacts_add"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsBaseResponse;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/repository/response/RelationshipsResponse;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel$1;->onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/RelationshipsResponse;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/RelationshipsResponse;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->access$000(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/repository/response/RelationshipsResponse;->getRelationships()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
