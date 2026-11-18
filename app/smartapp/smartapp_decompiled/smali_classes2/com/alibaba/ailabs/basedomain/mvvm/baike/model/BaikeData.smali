.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;
.super Ljava/lang/Object;
.source "BaikeData.java"


# instance fields
.field public final TAG:Ljava/lang/String;

.field private cardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;",
            ">;"
        }
    .end annotation
.end field

.field private originStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->TAG:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->cardList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->cardList:Ljava/util/List;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->cardList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->TAG:Ljava/lang/String;

    .line 33
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->cardList:Ljava/util/List;

    const/4 p1, 0x0

    .line 36
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 37
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->cardList:Ljava/util/List;

    new-instance v3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    invoke-direct {v3, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->TAG:Ljava/lang/String;

    const-string v1, "parse BaikeData err, origin:"

    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private isCardList()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->cardList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCardPage()Z
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->cardList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->cardList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    .line 116
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->getImage()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {v3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->isHighResolution()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->isFieldCompleted()Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    .line 122
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->isForceCard()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method private isImportancePerson()Z
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->cardList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->cardList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    .line 106
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->isImportancePerson()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1
.end method


# virtual methods
.method public generateRenderViewModel()Landroid/arch/lifecycle/ViewModel;
    .locals 4

    .line 48
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->isCardList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->getCardList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->isImportancePerson()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    new-instance v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->getCard()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;)V

    goto :goto_0

    .line 52
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->isCardPage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    new-instance v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->getCard()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->hasValidCard()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->isRenderByGenieBall()Z

    move-result v0

    if-nez v0, :cond_3

    .line 55
    new-instance v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->getCard()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateRenderViewModel viewModel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCard()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->cardList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->cardList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCardList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->cardList:Ljava/util/List;

    return-object v0
.end method

.method public hasValidCard()Z
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->getCard()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->TAG:Ljava/lang/String;

    const-string v1, "wtf, no valid card"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isRenderByGenieBall()Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->getCard()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->isRenderByGenieBall()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isVideoTemplate()Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->getCard()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->isVideoTemplate()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaikeData{originStr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->originStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", cardList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->cardList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
