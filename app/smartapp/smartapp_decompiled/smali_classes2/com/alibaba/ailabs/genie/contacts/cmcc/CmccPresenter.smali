.class public Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;
.super Ljava/lang/Object;
.source "CmccPresenter.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccContract$Presenter;
.implements Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog$GiftCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "cmcc-CmccBusiness"


# instance fields
.field private final BLURRING_RADIUS:I

.field private final IS_SHOW_DIALOG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private cmccBean:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;

.field private cmccView:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;

.field private conversationDialog:Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;

.field public isActivityDisplay:Z

.field public isGetPackage:Z

.field private mGiftPacksDialog:Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 31
    iput v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->BLURRING_RADIUS:I

    const-string v0, "is_show_dialog"

    .line 32
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->IS_SHOW_DIALOG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->isActivityDisplay:Z

    .line 43
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->isGetPackage:Z

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->activity:Landroid/app/Activity;

    .line 47
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->cmccBean:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;

    .line 48
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->cmccView:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->cmccView:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->setPresenter(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccContract$Presenter;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->startRTCService(Landroid/app/Activity;)V

    const-string p1, "cmcc-CmccBusiness"

    const-string v0, "onCreate"

    .line 51
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private activityDisplay(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;)V
    .locals 3

    .line 231
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->getIsOpenIms()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->cmccView:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->getImsNum()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->setPackageContent(ILjava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->getRemainCommonTime()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->cmccView:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->getRemainCommonTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->setPackageContent(ILjava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->cmccView:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;

    const/4 v0, 0x2

    const-string v2, "\u5df2\u7528\u5b8c"

    invoke-virtual {p1, v0, v2}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->setPackageContent(ILjava/lang/String;)V

    .line 240
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->cmccView:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->setPackageVisible(Z)V

    return-void
.end method

.method private analysisData(Ljava/lang/Object;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->cmccBean:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->reset()V

    .line 151
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 152
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->cmccView:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->setPackageVisible(Z)V

    const/4 p1, 0x5

    .line 153
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->showGiftDialog(I)V

    goto :goto_0

    .line 154
    :cond_0
    instance-of v0, p1, Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/ModelResponse;

    if-eqz v0, :cond_1

    .line 155
    nop

    nop

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->analysisResponse(Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/ModelResponse;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchData(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;)V
    .locals 9

    .line 187
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    .line 188
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 189
    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 193
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->cmccView:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;

    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->setPackageVisible(Z)V

    .line 194
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->getCheckPackageData(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;)V

    .line 195
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->isActivityDisplay:Z

    return-void

    .line 199
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->getIsOpenIms()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 200
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->getImsNum()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 201
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v4

    .line 202
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->getRemainFreeTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 203
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->getRemainCommonTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    if-eqz v5, :cond_3

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_5

    if-eqz v6, :cond_4

    if-eqz v7, :cond_5

    :cond_4
    if-eqz v7, :cond_7

    :cond_5
    if-eqz v0, :cond_7

    .line 220
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->cmccView:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;

    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccView;->setPackageVisible(Z)V

    .line 221
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->getCheckPackageData(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;)V

    .line 222
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->isActivityDisplay:Z

    goto :goto_3

    .line 210
    :cond_6
    :goto_2
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->activityDisplay(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;)V

    .line 211
    iput-boolean v4, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->isActivityDisplay:Z

    if-eqz v0, :cond_7

    .line 213
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->hideHint()V

    :cond_7
    :goto_3
    return-void
.end method

.method private startRTCService(Landroid/app/Activity;)V
    .locals 2

    .line 60
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.KEEP_RTCSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.alibaba.ailabs.genie.CmRTC"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public analysisResponse(Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/ModelResponse;)V
    .locals 7

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->isGetPackage:Z

    .line 163
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/ModelResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    const-string v0, "status"

    .line 164
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "remainFreeTime"

    .line 165
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "remainCommonTime"

    .line 166
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isOpenIms"

    .line 167
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "imsNum"

    .line 168
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "analysisResponse: status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cmcc-CmccBusiness"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "analysisResponse: remainFreeTime = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "analysisResponse: remainCommonTime = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "analysisResponse: isOpenIms = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "analysisResponse: imsNum = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->cmccBean:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;

    invoke-virtual {v4, v0}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->setStatus(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->cmccBean:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->setRemainFreeTime(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->cmccBean:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->setRemainCommonTime(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->cmccBean:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->setIsOpenIms(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->cmccBean:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->setImsNum(Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->cmccBean:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->dispatchData(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;)V

    return-void
.end method

.method public checkPackage()V
    .locals 1

    .line 73
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/cmcc/-$$Lambda$CmccPresenter$ZmYPQPJurQFN4Rg0ORc0PGese3E;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/cmcc/-$$Lambda$CmccPresenter$ZmYPQPJurQFN4Rg0ORc0PGese3E;-><init>(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository;->getToken(Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnTokenCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public synthetic lambda$checkPackage$74$CmccPresenter(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 75
    new-instance p1, Lcom/alibaba/ailabs/genie/contacts/cmcc/-$$Lambda$CmccPresenter$CufX6gNCCBjitCvWjGMTEUaUOdQ;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/contacts/cmcc/-$$Lambda$CmccPresenter$CufX6gNCCBjitCvWjGMTEUaUOdQ;-><init>(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;)V

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository;->queryRemainTime(Ljava/lang/String;Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnQueryRemainTimeCallback;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public synthetic lambda$null$73$CmccPresenter(ZLjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 78
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "QUERY_REMAIN_TIME"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/utils/EventUtils;->utClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->analysisData(Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onClose()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDestroy()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onGiftClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "cmcc-CmccBusiness"

    const-string v0, "onGiftClick"

    .line 125
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->openWebView()V

    return-void
.end method

.method public openWebView()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->activity:Landroid/app/Activity;

    const-string v1, "genie://com.alibaba.ailabs.genie.cmrtc/webviewPage?h5_url="

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->open(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public showConversationDialog()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->conversationDialog:Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->conversationDialog:Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->conversationDialog:Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->conversationDialog:Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;->show()V

    :cond_1
    return-void
.end method

.method public showGiftDialog(I)V
    .locals 3

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->isGetPackage:Z

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->dispatchData(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;)V

    .line 96
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->activity:Landroid/app/Activity;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "is_show_dialog"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/contacts/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->mGiftPacksDialog:Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;

    if-nez v0, :cond_1

    .line 101
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->mGiftPacksDialog:Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->mGiftPacksDialog:Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->setGiftCallback(Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog$GiftCallback;)Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;

    :cond_1
    const-string v0, "cmcc-CmccBusiness"

    const-string v1, "showGiftDialog"

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->mGiftPacksDialog:Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->mGiftPacksDialog:Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->setRadius(I)Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->setView(Landroid/view/View;)Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->show()V

    .line 108
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->activity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/alibaba/ailabs/genie/contacts/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
