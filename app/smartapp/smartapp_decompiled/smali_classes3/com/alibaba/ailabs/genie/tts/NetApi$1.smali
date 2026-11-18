.class final Lcom/alibaba/ailabs/genie/tts/NetApi$1;
.super Ljava/lang/Object;
.source "NetApi.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/tts/NetApi;->getSettingInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingUpdateResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -- "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetApi"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingUpdateResponse;",
            ">;)V"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sssss"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingUpdateResponse;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingUpdateResponse;->getModel()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetApi"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/second/utils/GsonUtils;->ourGSON:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingUpdateResponse;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingUpdateResponse;->getModel()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingUpdateResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingUpdateResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "GenieSetting"

    invoke-static {v0, v2, p1}, Lcom/alibaba/ailabs/genie/data/utils/AGUILog;->sendLogToWebGate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_e

    .line 103
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->getChild_mode()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ChildModeBean;

    move-result-object p1

    const-string v2, "false"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "true"

    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->getChild_mode()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ChildModeBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ChildModeBean;->getEnable()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_0

    .line 106
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$1;->val$context:Landroid/content/Context;

    invoke-static {v6, v4, v7}, Lcom/alibaba/ailabs/genie/tts/NetApi;->access$000(Landroid/content/Context;ZI)V

    goto :goto_1

    .line 107
    :cond_0
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 108
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$1;->val$context:Landroid/content/Context;

    invoke-static {v6, v3, v7}, Lcom/alibaba/ailabs/genie/tts/NetApi;->access$000(Landroid/content/Context;ZI)V

    .line 110
    :cond_1
    :goto_1
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->getVisual()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$VisualBean;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 113
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->getVisual()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$VisualBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$VisualBean;->getEnable()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 115
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$1;->val$context:Landroid/content/Context;

    invoke-static {v6, v4, v3}, Lcom/alibaba/ailabs/genie/tts/NetApi;->access$000(Landroid/content/Context;ZI)V

    goto :goto_2

    .line 116
    :cond_3
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 117
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$1;->val$context:Landroid/content/Context;

    invoke-static {v6, v3, v3}, Lcom/alibaba/ailabs/genie/tts/NetApi;->access$000(Landroid/content/Context;ZI)V

    .line 119
    :cond_4
    :goto_2
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->getFullDuplexDialog()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$FullDuplexDialogBean;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 123
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->getFullDuplexDialog()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$FullDuplexDialogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$FullDuplexDialogBean;->getEnable()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_6

    .line 125
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$1;->val$context:Landroid/content/Context;

    invoke-static {v6, v4, v7}, Lcom/alibaba/ailabs/genie/tts/NetApi;->access$000(Landroid/content/Context;ZI)V

    goto :goto_3

    .line 126
    :cond_6
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 127
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$1;->val$context:Landroid/content/Context;

    invoke-static {v6, v3, v7}, Lcom/alibaba/ailabs/genie/tts/NetApi;->access$000(Landroid/content/Context;ZI)V

    .line 129
    :cond_7
    :goto_3
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_8
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->getSmartCare()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$SmartCareBean;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 133
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->getSmartCare()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$SmartCareBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$SmartCareBean;->getEnable()Ljava/lang/String;

    move-result-object p1

    .line 134
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 135
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->getSmartCare()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$SmartCareBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$SmartCareBean;->getPushPerDay()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 136
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "ai_care_day_push_status"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->getSmartCare()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$SmartCareBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$SmartCareBean;->getPushPerWeek()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 138
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "ai_care_week_push_status"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    iget-object v7, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$1;->val$context:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/alibaba/ailabs/genie/tts/NetApi;->updateContentProvider(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 141
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_9

    .line 142
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$1;->val$context:Landroid/content/Context;

    invoke-static {v6, v4, v7}, Lcom/alibaba/ailabs/genie/tts/NetApi;->access$000(Landroid/content/Context;ZI)V

    goto :goto_4

    .line 143
    :cond_9
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 144
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$1;->val$context:Landroid/content/Context;

    invoke-static {v6, v3, v7}, Lcom/alibaba/ailabs/genie/tts/NetApi;->access$000(Landroid/content/Context;ZI)V

    .line 146
    :cond_a
    :goto_4
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_b
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->getUltrasonic()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$UltrasonicBean;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 150
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->getUltrasonic()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$UltrasonicBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$UltrasonicBean;->getEnable()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v4, v4}, Lcom/alibaba/ailabs/genie/tts/NetApi;->access$000(Landroid/content/Context;ZI)V

    goto :goto_5

    .line 153
    :cond_c
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/alibaba/ailabs/genie/tts/NetApi;->access$000(Landroid/content/Context;ZI)V

    .line 156
    :cond_d
    :goto_5
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method
