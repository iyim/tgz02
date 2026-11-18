.class public Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;
.super Ljava/lang/Object;
.source "AppContextData.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private canExitSkill:Z

.field private contextInfo:Lorg/json/JSONArray;

.field private fingerPrint:Ljava/lang/String;

.field private moduleId:Ljava/lang/String;

.field private payLoad:Lorg/json/JSONObject;

.field private privInfo:Lorg/json/JSONObject;

.field private secretKey:Ljava/lang/String;

.field private selectListData:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

.field private virtualPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->canExitSkill:Z

    return-void
.end method

.method public static toString(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_4

    .line 141
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "selectList"

    .line 144
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->selectListData:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->toJson(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "secretKey"

    .line 145
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->secretKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "moduleId"

    .line 146
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->moduleId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "canExitSkill"

    .line 147
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->canExitSkill:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 149
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->privInfo:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    const-string v1, "bizInfo"

    .line 150
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->privInfo:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->payLoad:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    const-string v1, "payLoad"

    .line 154
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->payLoad:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string/jumbo v1, "version"

    const/4 v2, 0x3

    .line 156
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->contextInfo:Lorg/json/JSONArray;

    if-eqz v1, :cond_2

    const-string v1, "context"

    .line 158
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->contextInfo:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->virtualPkg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->fingerPrint:Ljava/lang/String;

    .line 161
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->appVersion:Ljava/lang/String;

    .line 162
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->appName:Ljava/lang/String;

    .line 163
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "vpkg"

    .line 164
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->virtualPkg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fp"

    .line 165
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->fingerPrint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "aver"

    .line 166
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "an"

    .line 167
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 172
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->contextInfo:Lorg/json/JSONArray;

    if-nez p2, :cond_1

    .line 66
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->contextInfo:Lorg/json/JSONArray;

    .line 68
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "name"

    .line 69
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "payload"

    .line 70
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getSelectListData()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->selectListData:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    return-object v0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setCanExitSkill(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->canExitSkill:Z

    return-void
.end method

.method public setFingerPrint(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->fingerPrint:Ljava/lang/String;

    return-void
.end method

.method public setForegroundInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->virtualPkg:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->fingerPrint:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->appVersion:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->appName:Ljava/lang/String;

    return-void
.end method

.method public setModuleId(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->moduleId:Ljava/lang/String;

    return-void
.end method

.method public setPayLoadJson(Lorg/json/JSONObject;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->payLoad:Lorg/json/JSONObject;

    return-void
.end method

.method public setPrivInfo(Lorg/json/JSONObject;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->privInfo:Lorg/json/JSONObject;

    return-void
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->secretKey:Ljava/lang/String;

    return-void
.end method

.method public setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->selectListData:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    return-void
.end method

.method public setVirtualPkg(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->virtualPkg:Ljava/lang/String;

    return-void
.end method
