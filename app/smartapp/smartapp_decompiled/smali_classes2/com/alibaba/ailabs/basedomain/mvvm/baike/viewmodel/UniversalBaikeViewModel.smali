.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "UniversalBaikeViewModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniversalBaikeViewModel"

.field private static linkIndex:I


# instance fields
.field private description:Ljava/lang/String;

.field private image:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

.field private imageUrlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private linkItemData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;",
            ">;"
        }
    .end annotation
.end field

.field private linkItemDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;",
            ">;"
        }
    .end annotation
.end field

.field private originCard:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    .line 22
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->linkItemData:Landroid/arch/lifecycle/MutableLiveData;

    .line 31
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->title:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->subtitle:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->getLinkList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->linkItemDatas:Ljava/util/List;

    .line 34
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->getDisplayContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->description:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->getImage()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->image:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    .line 36
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->getImageUrlList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->imageUrlList:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->originCard:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    return-void
.end method


# virtual methods
.method public beginShowLinks()V
    .locals 4

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beginShowLinks this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniversalBaikeViewModel"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->linkItemData:Landroid/arch/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->linkItemDatas:Ljava/util/List;

    sget v2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->linkIndex:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->linkIndex:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public canJump()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->originCard:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->isFieldCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->originCard:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->image:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    return-object v0
.end method

.method public getImageCount()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->imageUrlList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 108
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getImageUrlList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->imageUrlList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLinkItemData()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->linkItemData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hasLinks()Z
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->linkItemDatas:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLite()Z
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->subtitle:Ljava/lang/String;

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->description:Ljava/lang/String;

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->description:Ljava/lang/String;

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public jumpNewPage(Landroid/content/Context;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->originCard:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->setForceCardPage(Z)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->originCard:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->open(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UniversalBaikeViewModel{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subtitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", linkItemDatas="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->linkItemDatas:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", image="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->image:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", imageUrlList="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->imageUrlList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", originCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->originCard:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
