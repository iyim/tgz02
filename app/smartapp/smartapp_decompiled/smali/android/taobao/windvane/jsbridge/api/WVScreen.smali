.class public Landroid/taobao/windvane/jsbridge/api/WVScreen;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "WVScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVScreen"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public capture(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 76
    new-instance v3, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v3}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 84
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "false"

    const-string v5, "app"

    const/16 v6, 0x32

    const/4 v7, 0x1

    const-wide/16 v8, 0x2800

    if-nez v0, :cond_2

    .line 86
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v10, p2

    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "inAlbum"

    .line 87
    invoke-virtual {v0, v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "type"

    const-string/jumbo v12, "view"

    .line 88
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "maxShortSide"

    .line 89
    invoke-virtual {v0, v12, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v14, "maxLongSide"

    .line 90
    invoke-virtual {v0, v14, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string/jumbo v14, "quality"

    .line 91
    invoke-virtual {v0, v14, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const/16 v15, 0x64

    if-gt v14, v15, :cond_1

    if-gez v14, :cond_0

    goto :goto_0

    :cond_0
    move v6, v14

    :cond_1
    :goto_0
    const-string v14, "compress"

    .line 95
    invoke-virtual {v0, v14, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v20, v0

    move-wide/from16 v16, v8

    move-wide/from16 v18, v12

    goto :goto_1

    :catch_0
    move-exception v0

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "param error: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "msg"

    invoke-virtual {v3, v4, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    :cond_2
    const-string v10, ""

    move-object v11, v5

    move-wide/from16 v16, v8

    move-wide/from16 v18, v16

    const/16 v20, 0x1

    .line 102
    :goto_1
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v13, v0, 0x1

    .line 104
    :try_start_1
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    iget-object v0, v1, Landroid/taobao/windvane/jsbridge/api/WVScreen;->mContext:Landroid/content/Context;

    move-object v12, v0

    check-cast v12, Landroid/app/Activity;

    int-to-long v14, v6

    invoke-static/range {v12 .. v20}, Landroid/taobao/windvane/jsbridge/api/ScreenCaptureUtil;->captureByActivty(Landroid/app/Activity;ZJJJZ)J

    move-result-wide v4

    goto :goto_2

    .line 107
    :cond_3
    iget-object v0, v1, Landroid/taobao/windvane/jsbridge/api/WVScreen;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->getView()Landroid/view/View;

    move-result-object v12

    int-to-long v14, v6

    invoke-static/range {v12 .. v20}, Landroid/taobao/windvane/jsbridge/api/ScreenCaptureUtil;->capture(Landroid/view/View;ZJJJZ)J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Landroid/taobao/windvane/jsbridge/utils/WVUtils;->getVirtualPath(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "url"

    .line 114
    invoke-virtual {v3, v4, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/taobao/windvane/cache/WVCacheManager;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/taobao/windvane/util/DigestUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "localPath"

    invoke-virtual {v3, v4, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    .line 110
    :catch_1
    invoke-virtual/range {p1 .. p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    return-void
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1

    const-string v0, "capture"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVScreen;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 49
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVScreen;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVScreen$2;

    invoke-direct {v0, p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVScreen$2;-><init>(Landroid/taobao/windvane/jsbridge/api/WVScreen;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    new-instance p2, Landroid/taobao/windvane/jsbridge/api/WVScreen$1;

    invoke-direct {p2, p0, p3}, Landroid/taobao/windvane/jsbridge/api/WVScreen$1;-><init>(Landroid/taobao/windvane/jsbridge/api/WVScreen;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 56
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->execute()V

    goto :goto_0

    :cond_0
    const-string v0, "getOrientation"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVScreen;->getOrientation(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "setOrientation"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 68
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVScreen;->setOrientation(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public getOrientation(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 2

    .line 120
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 121
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVScreen;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, "error"

    const-string v1, "Context must be Activty!"

    .line 122
    invoke-virtual {p2, v0, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVScreen;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "landscape"

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "portrait"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "unknown"

    :goto_0
    const-string v1, "orientation"

    .line 135
    invoke-virtual {p2, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void
.end method

.method public setOrientation(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 2

    .line 140
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 142
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 144
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "orientation"

    .line 145
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    const-string v0, "HY_PARAM_ERR"

    invoke-direct {p2, v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    .line 151
    :cond_0
    :goto_0
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVScreen;->mContext:Landroid/content/Context;

    instance-of p2, p2, Landroid/app/Activity;

    if-nez p2, :cond_1

    .line 152
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v0, "error"

    const-string v1, "Context must be Activty!"

    .line 153
    invoke-virtual {p2, v0, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    .line 158
    :cond_1
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVScreen;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    const-string v0, "landscape"

    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "landscapeRight"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "landscapeLeft"

    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    .line 162
    invoke-virtual {p2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    :cond_3
    const-string v0, "portrait"

    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "portraitUpsideDown"

    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x9

    .line 166
    invoke-virtual {p2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    :cond_5
    const-string v0, "auto"

    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    .line 168
    invoke-virtual {p2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 170
    :cond_6
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    return-void

    :cond_7
    :goto_1
    const/4 v0, 0x1

    .line 164
    invoke-virtual {p2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v0, 0x0

    .line 160
    invoke-virtual {p2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 173
    :goto_3
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    return-void
.end method
