.class public Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "RelationshipViewModel.java"


# instance fields
.field private mContactId:Ljava/lang/String;

.field private mRelationships:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/model/Relationship;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRepository:Lcom/alibaba/ailabs/genie/contacts/repository/RelationshipRepository;

.field private mSelectedPosition:I

.field private mSelectedRelationShip:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/genie/contacts/model/Relationship;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    .line 20
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->mRelationships:Landroid/arch/lifecycle/MutableLiveData;

    .line 23
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->mSelectedRelationShip:Landroid/arch/lifecycle/MutableLiveData;

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->mSelectedPosition:I

    .line 27
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/repository/RelationshipRepository;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/repository/RelationshipRepository;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->mRepository:Lcom/alibaba/ailabs/genie/contacts/repository/RelationshipRepository;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->mRelationships:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public getContactId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->mContactId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationshipList()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/model/Relationship;",
            ">;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->mRelationships:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->mSelectedPosition:I

    return v0
.end method

.method public getSelectedRelationShip()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/genie/contacts/model/Relationship;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->mSelectedRelationShip:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public loadRelationshipList(Ljava/lang/String;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->mRepository:Lcom/alibaba/ailabs/genie/contacts/repository/RelationshipRepository;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;)V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/ailabs/genie/contacts/repository/RelationshipRepository;->getRelationshipList(Ljava/lang/String;Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;)V

    return-void
.end method

.method public setContactId(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->mContactId:Ljava/lang/String;

    return-void
.end method

.method public setEditSelectPosition(Ljava/util/List;Lcom/alibaba/ailabs/genie/contacts/model/Relationship;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/model/Relationship;",
            ">;",
            "Lcom/alibaba/ailabs/genie/contacts/model/Relationship;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 66
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;->getrId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;->getrId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iput v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->mSelectedPosition:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->mSelectedPosition:I

    return-void
.end method

.method public setSelectedRelationShip(Lcom/alibaba/ailabs/genie/contacts/model/Relationship;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->mSelectedRelationShip:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
