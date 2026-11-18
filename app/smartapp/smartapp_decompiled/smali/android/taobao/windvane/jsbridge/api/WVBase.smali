.class public Landroid/taobao/windvane/jsbridge/api/WVBase;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "WVBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private copyToClipboard(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "text"

    .line 281
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVResult;

    const-string v2, "HY_PARAM_ERR"

    invoke-direct {v1, v2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 285
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, "HY_FAILED"

    if-eqz p2, :cond_1

    .line 287
    :try_start_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    .line 289
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBase;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "clipboard"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 290
    invoke-static {p2, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    .line 291
    invoke-virtual {v0, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 292
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    const-string v0, "HY_SUCCESS"

    invoke-direct {p2, v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    :try_start_2
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v1, p2

    goto :goto_0

    .line 296
    :cond_0
    :try_start_3
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2, v4}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, p2

    move-object v2, v4

    goto :goto_1

    :catch_1
    move-exception v0

    .line 301
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    const-string p2, "msg"

    .line 304
    invoke-virtual {v1, p2, v2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void
.end method


# virtual methods
.method public addTailJSBridge(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 3

    .line 69
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "className"

    .line 70
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handlerName"

    .line 71
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "params"

    .line 72
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    new-instance v2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    invoke-direct {v2}, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;-><init>()V

    .line 74
    iput-object v0, v2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    .line 75
    iput-object v1, v2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    .line 76
    iput-object p1, v2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    .line 77
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBase;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    iput-object p1, v2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    .line 78
    new-instance p1, Landroid/taobao/windvane/jsbridge/api/WVBase$1;

    invoke-direct {p1, p0}, Landroid/taobao/windvane/jsbridge/api/WVBase$1;-><init>(Landroid/taobao/windvane/jsbridge/api/WVBase;)V

    iput-object p1, v2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->succeedCallBack:Landroid/taobao/windvane/jsbridge/IJsApiSucceedCallBack;

    .line 84
    new-instance p1, Landroid/taobao/windvane/jsbridge/api/WVBase$2;

    invoke-direct {p1, p0}, Landroid/taobao/windvane/jsbridge/api/WVBase$2;-><init>(Landroid/taobao/windvane/jsbridge/api/WVBase;)V

    iput-object p1, v2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->failedCallBack:Landroid/taobao/windvane/jsbridge/IJsApiFailedCallBack;

    .line 90
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object p1

    iget-object p1, p1, Landroid/taobao/windvane/jsbridge/WVJsBridge;->mTailBridges:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 91
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Landroid/taobao/windvane/jsbridge/WVJsBridge;->mTailBridges:Ljava/util/ArrayList;

    .line 93
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object p1

    iget-object p1, p1, Landroid/taobao/windvane/jsbridge/WVJsBridge;->mTailBridges:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "Base"

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTailJSBridge : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public commitUTEvent(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 182
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "eventId"

    .line 183
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "arg1"

    .line 184
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "arg2"

    .line 185
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "arg3"

    .line 186
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "args"

    .line 187
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v9, 0x0

    if-eqz v4, :cond_0

    .line 190
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v9

    .line 191
    new-array v9, v9, [Ljava/lang/String;

    .line 192
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    .line 194
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 195
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 196
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "%s=%s"

    const/4 v15, 0x2

    .line 197
    new-array v15, v15, [Ljava/lang/Object;

    aput-object v12, v15, v3

    aput-object v13, v15, v2

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const v4, 0xfb93

    if-ne v4, v5, :cond_1

    .line 203
    :try_start_1
    invoke-static {v5, v6, v7, v8, v9}, Landroid/taobao/windvane/monitor/UserTrackUtil;->commitEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    :cond_1
    const/4 v2, 0x0

    .line 207
    :catch_1
    :goto_1
    new-instance v3, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v3}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v4, "Base"

    if-eqz v2, :cond_2

    .line 209
    invoke-virtual {v0, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    .line 210
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitUTEvent: param="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 214
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "commitUTEvent: parameter error, param="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HY_PARAM_ERR"

    .line 215
    invoke-virtual {v3, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1

    const-string v0, "isWindVaneSDK"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVBase;->isWindVaneSDK(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "plusUT"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVBase;->plusUT(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "commitUTEvent"

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVBase;->commitUTEvent(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "isInstall"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVBase;->isInstall(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "isAppsInstalled"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVBase;->isAppsInstalled(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "copyToClipboard"

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 58
    invoke-direct {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVBase;->copyToClipboard(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "addTailJSBridge"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 60
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVBase;->addTailJSBridge(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public isAppsInstalled(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 8

    const-string v0, "0"

    .line 243
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 249
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 250
    new-instance v2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 251
    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/api/WVBase;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v3}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 252
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 256
    :try_start_1
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "android"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 265
    :try_start_2
    invoke-virtual {v3, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    if-nez v6, :cond_0

    move-object v5, v0

    goto :goto_1

    :cond_0
    const-string v5, "1"

    .line 268
    :goto_1
    invoke-virtual {v2, v4, v5}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v5

    .line 258
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 259
    invoke-virtual {v2, v4, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {v2}, Landroid/taobao/windvane/jsbridge/WVResult;->setSuccess()V

    .line 271
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    :catch_2
    move-exception p2

    .line 245
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 246
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    return-void
.end method

.method public isInstall(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 5

    const-string v0, "Base"

    .line 223
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    .line 224
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInstall parse params error, params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 228
    :goto_0
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 229
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBase;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v2}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/taobao/windvane/util/CommonUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 230
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInstall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 234
    invoke-virtual {p1, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_1

    .line 236
    :cond_1
    invoke-virtual {p1, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_1
    return-void
.end method

.method public isWindVaneSDK(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 2

    .line 100
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v0, "os"

    const-string v1, "android"

    .line 101
    invoke-virtual {p2, v0, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "version"

    const-string v1, "8.5.0"

    .line 102
    invoke-virtual {p2, v0, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isAppDebug()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "debug"

    invoke-virtual {p2, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Base"

    const-string v1, "isWindVaneSDK: version=8.5.0"

    .line 105
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    sget-object v0, Landroid/taobao/windvane/config/EnvEnum;->DAILY:Landroid/taobao/windvane/config/EnvEnum;

    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/config/EnvEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "daily"

    goto :goto_0

    .line 110
    :cond_1
    sget-object v0, Landroid/taobao/windvane/config/EnvEnum;->PRE:Landroid/taobao/windvane/config/EnvEnum;

    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/config/EnvEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "pre"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "release"

    :goto_0
    const-string v1, "env"

    .line 114
    invoke-virtual {p2, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBase;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    instance-of v0, v0, Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v0, :cond_3

    const-string v0, "WVWebView"

    goto :goto_1

    :cond_3
    const-string v0, "WVUCWebView"

    :goto_1
    const-string v1, "container"

    .line 120
    invoke-virtual {p2, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void
.end method

.method public plusUT(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "args"

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 133
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "eid"

    .line 134
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "a1"

    .line 135
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "a2"

    .line 136
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "a3"

    .line 137
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 138
    new-array v10, v4, [Ljava/lang/String;

    .line 139
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 140
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v5

    .line 143
    new-array v10, v5, [Ljava/lang/String;

    .line 144
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    const/4 v11, 0x0

    .line 146
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 147
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 148
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "%s=%s"

    const/4 v15, 0x2

    .line 149
    new-array v15, v15, [Ljava/lang/Object;

    aput-object v12, v15, v4

    aput-object v13, v15, v3

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x238c

    if-lt v6, v2, :cond_1

    const/16 v2, 0x23f0

    if-lt v6, v2, :cond_2

    :cond_1
    const/16 v2, 0x4e1f

    if-ne v6, v2, :cond_3

    .line 156
    :cond_2
    :try_start_1
    invoke-static {v6, v7, v8, v9, v10}, Landroid/taobao/windvane/monitor/UserTrackUtil;->commitEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    :cond_3
    const/4 v3, 0x0

    .line 160
    :catch_1
    :goto_1
    new-instance v2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v4, "Base"

    if-eqz v3, :cond_4

    .line 162
    invoke-virtual {v0, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    .line 163
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plusUT: param="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 167
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plusUT: parameter error, param="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HY_PARAM_ERR"

    .line 168
    invoke-virtual {v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :cond_5
    :goto_2
    return-void
.end method
