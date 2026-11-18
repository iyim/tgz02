.class public Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "HuskyDetailsViewModel.java"


# instance fields
.field private mHuskyInfo:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/genie/contacts/model/HuskyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    .line 15
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;->mHuskyInfo:Landroid/arch/lifecycle/MutableLiveData;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;->mHuskyInfo:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public getHuskyInfo()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/genie/contacts/model/HuskyInfo;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;->mHuskyInfo:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public loadHuskyDetailsByName(Ljava/lang/String;)V
    .locals 1

    .line 21
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;)V

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/repository/HuskyRepository;->getHuskyDetails(Ljava/lang/String;Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
