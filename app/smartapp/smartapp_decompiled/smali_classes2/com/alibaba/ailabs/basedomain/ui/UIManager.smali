.class public final Lcom/alibaba/ailabs/basedomain/ui/UIManager;
.super Ljava/lang/Object;
.source "UIManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UIManager"

.field private static volatile sManager:Lcom/alibaba/ailabs/basedomain/ui/UIManager;


# instance fields
.field private mAskAgain:Z

.field private mAsrSessionId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentClass:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOriginData:Ljava/lang/Object;

.field private mOriginDataJson:Ljava/lang/String;

.field private mPageType:Ljava/lang/String;

.field private mRenderViewModel:Landroid/arch/lifecycle/ViewModel;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mFragmentClass:Landroid/arch/lifecycle/MutableLiveData;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private fillRenderData()V
    .locals 5

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fillRenderData mPageType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mPageType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UIManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mPageType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const v4, -0x160e6805

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "aligenie.baike.base"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v0, 0x0

    .line 116
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mOriginDataJson:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 117
    new-instance v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mOriginDataJson:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mOriginData:Ljava/lang/Object;

    instance-of v4, v2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    if-eqz v4, :cond_4

    .line 119
    new-instance v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;

    nop

    nop

    invoke-direct {v0, v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;)V

    .line 121
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->isVideoTemplate()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 122
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->hideUi(Landroid/content/Context;)V

    const-string v2, "fillRenderData isVideoTemplate"

    .line 123
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->getCard()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->getLinkList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;->onClick(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 127
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jump direct to url, wrong, data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    .line 132
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->isRenderByGenieBall()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "fillRenderData RenderByGenieBall"

    .line 134
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 137
    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->generateRenderViewModel()Landroid/arch/lifecycle/ViewModel;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mRenderViewModel:Landroid/arch/lifecycle/ViewModel;

    .line 139
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mRenderViewModel:Landroid/arch/lifecycle/ViewModel;

    instance-of v3, v2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    if-eqz v3, :cond_7

    const-string v2, "fillRenderData post value BaikeCardFragment"

    .line 140
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-class v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->updateFragment(Ljava/lang/Class;)V

    goto :goto_4

    .line 142
    :cond_7
    instance-of v3, v2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;

    if-eqz v3, :cond_8

    const-string v2, "fillRenderData post value BaikeListFragment"

    .line 143
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-class v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->updateFragment(Ljava/lang/Class;)V

    goto :goto_4

    .line 145
    :cond_8
    instance-of v3, v2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    if-eqz v3, :cond_9

    const-string v2, "fillRenderData post value UniversalBaikeViewModel"

    .line 146
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-class v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->updateFragment(Ljava/lang/Class;)V

    goto :goto_4

    .line 148
    :cond_9
    instance-of v2, v2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    if-eqz v2, :cond_a

    const-string v2, "fillRenderData post value BaikeImportancePersonViewModel"

    .line 149
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-class v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->updateFragment(Ljava/lang/Class;)V

    goto :goto_4

    :cond_a
    const-string v2, "fillRenderData post value nothing"

    .line 152
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_4
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/BaikeData;->isRenderByGenieBall()Z

    move-result v0

    if-nez v0, :cond_b

    .line 155
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->hideUi(Landroid/content/Context;)V

    :cond_b
    :goto_5
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/UIManager;
    .locals 2

    .line 54
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->sManager:Lcom/alibaba/ailabs/basedomain/ui/UIManager;

    if-nez v0, :cond_1

    .line 55
    const-class v0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->sManager:Lcom/alibaba/ailabs/basedomain/ui/UIManager;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/UIManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->sManager:Lcom/alibaba/ailabs/basedomain/ui/UIManager;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 61
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->sManager:Lcom/alibaba/ailabs/basedomain/ui/UIManager;

    return-object p0
.end method

.method private getPlanetInfo()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mOriginDataJson:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "entity"

    if-nez v1, :cond_1

    .line 180
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mOriginDataJson:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    .line 183
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 185
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mOriginData:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mOriginData:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;

    .line 188
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->getOriginJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method private updateFragment(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFragment fragmentClass:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UIManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "renderData"

    const/4 v3, 0x0

    .line 165
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, ""

    .line 166
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "reply"

    .line 167
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mPageType:Ljava/lang/String;

    const-string v2, "pageType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mAsrSessionId:I

    const-string v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "askAgain"

    const/4 v2, 0x0

    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->getPlanetInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "planetInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x30000000

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 174
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mFragmentClass:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mRenderViewModel:Landroid/arch/lifecycle/ViewModel;

    const-string v1, ""

    .line 103
    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mOriginDataJson:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mOriginData:Ljava/lang/Object;

    .line 105
    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mPageType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 106
    iput-boolean v1, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mAskAgain:Z

    .line 107
    iput v1, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mAsrSessionId:I

    .line 108
    sput-object v0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->sManager:Lcom/alibaba/ailabs/basedomain/ui/UIManager;

    return-void
.end method

.method getFragmentClass()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;>;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mFragmentClass:Landroid/arch/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mFragmentClass:Landroid/arch/lifecycle/MutableLiveData;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mFragmentClass:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPageType()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mPageType:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderViewModel()Landroid/arch/lifecycle/ViewModel;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mRenderViewModel:Landroid/arch/lifecycle/ViewModel;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;Ljava/lang/String;ZI)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mOriginData:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mOriginDataJson:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mPageType:Ljava/lang/String;

    .line 81
    iput-boolean p3, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mAskAgain:Z

    .line 82
    iput p4, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mAsrSessionId:I

    .line 83
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->fillRenderData()V

    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIManager setData OriginData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pageType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " askAgain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " asrSessionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UIManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mOriginDataJson:Ljava/lang/String;

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mOriginData:Ljava/lang/Object;

    .line 71
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mPageType:Ljava/lang/String;

    .line 72
    iput-boolean p3, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mAskAgain:Z

    .line 73
    iput p4, p0, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->mAsrSessionId:I

    .line 74
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->fillRenderData()V

    return-void
.end method
