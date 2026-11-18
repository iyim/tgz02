.class Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$6;
.super Ljava/lang/Object;
.source "AppSearchActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$6;->this$0:Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "AppSearchASRListener"

    .line 335
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$6;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public asrToClient(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asrToClient() called with: bundle = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppSearchASRListener"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 14

    const-string v0, "]"

    const-string v1, "getAppContextData() called with: appContextData = ["

    .line 431
    new-instance v2, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;-><init>()V

    const-string v3, "appsearch"

    .line 434
    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->setPageId(Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    move-result-object v3

    const-string v4, "AppSearchASRListener"

    if-nez v3, :cond_0

    const-string p1, "getAppContextData data is null , return ..."

    .line 437
    invoke-static {v4, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 441
    :cond_0
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 442
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getSearchAppList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x6

    if-le v5, v6, :cond_1

    const/4 v5, 0x6

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_4

    .line 445
    new-instance v9, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;

    invoke-direct {v9}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;-><init>()V

    .line 446
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getSearchAppList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    .line 447
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAppContextData itemBean == "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "appid"

    .line 449
    invoke-virtual {v10}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getAppId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "type"

    .line 450
    invoke-virtual {v10}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getStsType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->setSelectKey(Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 452
    :goto_1
    invoke-virtual {v10}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getStsValueArray()[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    if-ge v11, v12, :cond_2

    .line 453
    invoke-virtual {v10}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getStsValueArray()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v11

    invoke-virtual {v9, v12}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->addSelectValue(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    if-ge v8, v6, :cond_3

    .line 456
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u7b2c"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v8, 0x1

    invoke-static {v11}, Lcom/alibaba/ailabs/base/util/MarketBaseUtil;->getAppSearchNumStrByNum(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\u4e2a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->addSelectValue(Ljava/lang/String;)V

    .line 477
    :cond_3
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_4
    const-string v5, "item"

    .line 488
    invoke-virtual {v2, v5, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->addSelectData(Ljava/lang/String;Ljava/util/List;)V

    .line 490
    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-static {}, Lcom/alibaba/ailabs/base/util/BaseConstant;->isDebugPackage()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "6881120e-2bba-44dc-812b-687f064c956c"

    .line 495
    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v2, "473aa43a-3425-47b8-b2d1-18d1493abefd"

    .line 497
    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    .line 500
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 502
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public getSceneInfo(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSceneInfo() called with: bundle = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppSearchASRListener"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public onASRResult(Ljava/lang/String;Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 2

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onASRResult() called with: s = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], b = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppSearchASRListener"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public onASRServiceStatusUpdated(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRServiceStatus;)V
    .locals 2

    .line 368
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRServiceStatus;->ASR_SERVICE_STATUS_CONNECTED:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRServiceStatus;

    .line 372
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRServiceStatus;->ASR_SERVICE_STATUS_DISCONNECTED:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRServiceStatus;

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onASRServiceStatusUpdated() called with: asrServiceStatus = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppSearchASRListener"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onASRStatusUpdated(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;Landroid/os/Bundle;)V
    .locals 2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onASRStatusUpdated() called with: asrStatus = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], bundle = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppSearchASRListener"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 2

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNLUResult() called with: cmdDomain = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], cmd = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], cmdPar = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], bundle = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "AppSearchASRListener"

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    const-string p4, "/Open"

    .line 410
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 411
    iget-object p2, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$6;->this$0:Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->access$300(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    const/4 p4, 0x1

    .line 412
    iput p4, p2, Landroid/os/Message;->what:I

    .line 413
    iput-object p3, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 414
    iget-object p3, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$6;->this$0:Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;

    invoke-static {p3}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->access$300(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;)Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    iput-boolean p4, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    :cond_0
    return-object p1
.end method
