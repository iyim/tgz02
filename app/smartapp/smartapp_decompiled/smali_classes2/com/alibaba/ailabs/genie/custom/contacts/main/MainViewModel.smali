.class public Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "MainViewModel.java"


# instance fields
.field private mRecordsRepository:Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;

.field private mRepository:Lcom/alibaba/ailabs/genie/custom/contacts/repository/MainRepository;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    .line 22
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/MainRepository;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/MainRepository;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;->mRepository:Lcom/alibaba/ailabs/genie/custom/contacts/repository/MainRepository;

    .line 23
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;->mRecordsRepository:Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;

    return-void
.end method


# virtual methods
.method public fetchContacts(ILandroid/content/Context;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;->mRepository:Lcom/alibaba/ailabs/genie/custom/contacts/repository/MainRepository;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/MainRepository;->getContactRepository()Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->fetchData(IZLandroid/content/Context;)V

    return-void
.end method

.method public fetchRecordsByOffset(I)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;->mRecordsRepository:Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;->getRecordsByOffset(I)V

    return-void
.end method

.method public getCallRecords()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;->mRecordsRepository:Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;->mCallRecords:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    return-object v0
.end method

.method public getLiveContacts()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;->mRepository:Lcom/alibaba/ailabs/genie/custom/contacts/repository/MainRepository;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/MainRepository;->getContactRepository()Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->mContacts:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    return-object v0
.end method

.method public updateCallsViewedTime()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;->mRecordsRepository:Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;->updateCallsViewedTime()V

    return-void
.end method
