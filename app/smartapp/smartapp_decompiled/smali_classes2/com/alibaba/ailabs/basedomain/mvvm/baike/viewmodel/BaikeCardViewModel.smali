.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "BaikeCardViewModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaikeCardViewModel"


# instance fields
.field private content:Ljava/lang/String;

.field private image:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

.field private imageUrl:Ljava/lang/String;

.field private imageUrlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isForceCard:Z

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
.method public constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->title:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->subtitle:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->getLinkList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->linkItemDatas:Ljava/util/List;

    .line 30
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->getAttributes()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->content:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->getImage()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->image:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    .line 32
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->getImageUrlList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->imageUrlList:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->isForceCard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->isForceCard:Z

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->originCard:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->title:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->subtitle:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->linkItemDatas:Ljava/util/List;

    .line 44
    iput-object p4, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->image:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->imageUrl:Ljava/lang/String;

    return-object v0
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

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->imageUrlList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLinkItemDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->linkItemDatas:Ljava/util/List;

    return-object v0
.end method

.method public getNextImage(I)Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStepImg right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaikeCardViewModel"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->originCard:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->getStepImg(I)Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    move-result-object p1

    return-object p1
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isForceCardPage()Z
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isForceCardPage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->isForceCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaikeCardViewModel"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->isForceCard:Z

    return v0
.end method

.method public jumpToUniversalPage(Landroid/content/Context;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->originCard:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->setForceCardPage(Z)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->originCard:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->open(Landroid/content/Context;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaikeCardViewModel{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subtitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", linkItemDatas="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->linkItemDatas:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", content=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
