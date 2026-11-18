.class public Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "ItemViewModel.java"


# instance fields
.field private mRepository:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    .line 19
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;->mRepository:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    return-void
.end method


# virtual methods
.method public fetchContacts()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;->mRepository:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->getContacts()V

    return-void
.end method

.method public fetchPstnCharge()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;->mRepository:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->getPstnCharge()V

    return-void
.end method

.method public fetchPstnMinutes()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;->mRepository:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->getPstnMinutes()V

    return-void
.end method

.method public fetchRecords()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;->mRepository:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->getRecords()V

    return-void
.end method

.method public fetchRecordsByOffset()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;->mRepository:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->getRecordsByOffset()V

    return-void
.end method

.method public fetchRecordsByOffset(I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;->mRepository:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->getRecordsByOffset(I)V

    return-void
.end method

.method public getLiveContacts()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;->mRepository:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveContacts:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    return-object v0
.end method

.method public getLivePstnCharge()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;->mRepository:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLivePstnCharge:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLivePstnMinutes()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;->mRepository:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLivePstnMinutes:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLiveRecords()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;->mRepository:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveRecords:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    return-object v0
.end method

.method public updateCallsViewedTime()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;->mRepository:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->updateCallsViewedTime()V

    return-void
.end method
