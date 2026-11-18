.class public Lcom/alibaba/ailabs/genie/router/view/LoadActivity;
.super Landroid/app/Activity;
.source "LoadActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/router/view/LoadActivity$MyIResponseCallback;
    }
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mDelayCloseLoadWindow:I

.field private mIntentData:Landroid/os/Bundle;

.field private mIsGameRouter:Z

.field private mIsShowPicIcon:Z

.field private mLaunchMode:I

.field private mLoadPageBackgoundBitmap:Landroid/graphics/Bitmap;

.field private mPackageName:Ljava/lang/String;

.field private mPicUrl:Ljava/lang/String;

.field private mVoicePar:Ljava/lang/String;

.field private showProgress:Z

.field private token:J

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v14, p0

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v15, 0x1

    const/4 v2, 0x0

    const-string v12, "GenieAIRouter"

    if-eqz v1, :cond_5

    const-string v0, "isGameRouter"

    .line 53
    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mIsGameRouter:Z

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open api launch LoadActivity; mIsGameRouter="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mIsGameRouter:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 61
    invoke-virtual {v3, v0, v2}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mIsGameRouter:Z

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open uri launch LoadActivity; mIsGameRouter="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mIsGameRouter:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_1
    iput-boolean v2, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mIsGameRouter:Z

    .line 68
    :goto_0
    iget-boolean v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mIsGameRouter:Z

    if-eqz v0, :cond_2

    .line 70
    sget v0, Lcom/alibaba/ailabs/genie/router/R$style;->GameThemeLoadActivity:I

    invoke-virtual {v14, v0}, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->setTheme(I)V

    goto :goto_1

    .line 73
    :cond_2
    sget v0, Lcom/alibaba/ailabs/genie/router/R$style;->ThemeLoadActivity:I

    invoke-virtual {v14, v0}, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->setTheme(I)V

    :goto_1
    const-string v0, "isShowPicIcon"

    .line 76
    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    invoke-virtual {v1, v0, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mIsShowPicIcon:Z

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open api launch LoadActivity; mIsShowPicIcon="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mIsShowPicIcon:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 81
    :cond_3
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 83
    invoke-virtual {v3, v0, v15}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mIsShowPicIcon:Z

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open uri launch LoadActivity; mIsShowPicIcon="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mIsShowPicIcon:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 86
    :cond_4
    iput-boolean v15, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mIsShowPicIcon:Z

    .line 91
    :cond_5
    :goto_2
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    if-eqz v1, :cond_e

    .line 96
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    if-eqz v13, :cond_d

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launch LoadActivity; launchuri="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "openByPackageName"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "delayCloseLoadWindow"

    const-string v4, "packageName"

    const-string/jumbo v5, "showProgress"

    const-string/jumbo v6, "voiceParameter"

    const-string v7, "lunchMode"

    const-string/jumbo v8, "uri"

    const-string v9, "content"

    const-string v10, "pic_url"

    const-string v11, "name"

    if-eqz v0, :cond_9

    .line 100
    invoke-virtual {v13, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mAppName:Ljava/lang/String;

    .line 101
    invoke-virtual {v13, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mPicUrl:Ljava/lang/String;

    .line 102
    invoke-virtual {v13, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mContent:Ljava/lang/String;

    .line 103
    invoke-virtual {v13, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->uri:Ljava/lang/String;

    .line 105
    :try_start_0
    invoke-virtual {v13, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mLaunchMode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    :goto_3
    invoke-virtual {v13, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mVoicePar:Ljava/lang/String;

    .line 110
    invoke-virtual {v13, v5, v2}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->showProgress:Z

    .line 111
    invoke-virtual {v13, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mPackageName:Ljava/lang/String;

    .line 113
    :try_start_1
    invoke-virtual {v13, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mDelayCloseLoadWindow:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->token:J

    .line 120
    iget-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mIntentData:Landroid/os/Bundle;

    if-nez v0, :cond_6

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mIntentData:Landroid/os/Bundle;

    .line 123
    :cond_6
    iget-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mIntentData:Landroid/os/Bundle;

    sget-object v1, Lcom/alibaba/ailabs/genie/router/bean/utils/GenieRouterConstant;->ROUTER_TOKEN_KEY:Ljava/lang/String;

    iget-wide v2, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->token:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 125
    iget-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "\u4e3b\u4eba\uff0c\u6b63\u5728\u4e3a\u60a8\u5168\u529b\u52a0\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u540e\uff5e"

    goto :goto_5

    :cond_7
    iget-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mContent:Ljava/lang/String;

    :goto_5
    iput-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mContent:Ljava/lang/String;

    .line 128
    iget-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 129
    iget-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v14, v0}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->openByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 132
    :cond_8
    iget-object v2, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mAppName:Ljava/lang/String;

    iget-boolean v3, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mIsGameRouter:Z

    iget-boolean v4, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mIsShowPicIcon:Z

    iget-object v5, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mPicUrl:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mContent:Ljava/lang/String;

    iget-object v8, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->uri:Ljava/lang/String;

    iget-object v9, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mPackageName:Ljava/lang/String;

    iget v10, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mDelayCloseLoadWindow:I

    iget-boolean v11, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->showProgress:Z

    iget-wide v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->token:J

    move-wide/from16 v16, v0

    move-object/from16 v1, p0

    move-object v15, v12

    move-object/from16 v18, v13

    move-wide/from16 v12, v16

    invoke-static/range {v1 .. v13}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->showLoadingWindow(Landroid/app/Activity;Ljava/lang/String;ZZLjava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJ)V

    .line 133
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->playTTS(Ljava/lang/String;)V

    .line 137
    :try_start_2
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "firstType"

    const-string v2, "history_app"

    .line 138
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v2, "id"

    .line 141
    iget-object v3, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "source"

    const-string/jumbo v3, "router"

    .line 142
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dataDetail"

    .line 143
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "secondType"

    const-string v2, "action_uri"

    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openByPackageName, payloadObject="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v1

    const-string v2, "AliGenie.Data"

    const-string v3, "UserHistoryReport"

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/alibaba/ailabs/genie/router/view/LoadActivity$MyIResponseCallback;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/alibaba/ailabs/genie/router/view/LoadActivity$MyIResponseCallback;-><init>(Lcom/alibaba/ailabs/genie/router/view/LoadActivity$1;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_8

    :catch_2
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8

    :cond_9
    move-object v15, v12

    .line 153
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mAppName:Ljava/lang/String;

    .line 155
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mPicUrl:Ljava/lang/String;

    const-string v10, "intentData"

    .line 159
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a

    :try_start_3
    const-string v11, "loadPageBackgroundBitmap"

    .line 162
    invoke-virtual {v0, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 163
    instance-of v11, v0, Landroid/os/IBinder;

    if-eqz v11, :cond_a

    const-string v11, "LoadActivity; loadPageBackgroundBitmap"

    .line 164
    invoke-static {v15, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/router/IRemoteBitMapInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/genie/router/IRemoteBitMapInterface;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v11, "LoadActivity; loadPageBackgroundBitmap; getBitmap"

    .line 167
    invoke-static {v15, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/router/IRemoteBitMapInterface;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mLoadPageBackgoundBitmap:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    :cond_a
    :goto_6
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mContent:Ljava/lang/String;

    .line 177
    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->uri:Ljava/lang/String;

    .line 178
    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mLaunchMode:I

    .line 179
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mVoicePar:Ljava/lang/String;

    .line 180
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->showProgress:Z

    .line 181
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mPackageName:Ljava/lang/String;

    .line 182
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mDelayCloseLoadWindow:I

    .line 183
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mIntentData:Landroid/os/Bundle;

    .line 184
    iget-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "\u4e3b\u4eba\uff0c\u6b63\u5728\u4e3a\u60a8\u5168\u529b\u52a0\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u540e\uff5e"

    goto :goto_7

    :cond_b
    iget-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mContent:Ljava/lang/String;

    :goto_7
    iput-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mContent:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const-string/jumbo v0, "token"

    .line 185
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->token:J

    .line 187
    iget-object v2, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->uri:Ljava/lang/String;

    iget v3, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mLaunchMode:I

    iget-object v4, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mVoicePar:Ljava/lang/String;

    iget-object v5, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mPackageName:Ljava/lang/String;

    iget-object v6, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mIntentData:Landroid/os/Bundle;

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->uriProcess(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "\u54ce\u5440\uff0c\u53d1\u751f\u9519\u8bef\u4e86"

    const/4 v1, 0x1

    .line 189
    invoke-static {v14, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->finish()V

    return-void

    .line 193
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uriProcess spend : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLine"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mAppName:Ljava/lang/String;

    iget-boolean v3, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mIsGameRouter:Z

    iget-boolean v4, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mIsShowPicIcon:Z

    iget-object v5, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mPicUrl:Ljava/lang/String;

    iget-object v6, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mLoadPageBackgoundBitmap:Landroid/graphics/Bitmap;

    iget-object v7, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mContent:Ljava/lang/String;

    iget-object v8, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->uri:Ljava/lang/String;

    iget-object v9, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mPackageName:Ljava/lang/String;

    iget v10, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mDelayCloseLoadWindow:I

    iget-boolean v11, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->showProgress:Z

    iget-wide v12, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->token:J

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v13}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->showLoadingWindow(Landroid/app/Activity;Ljava/lang/String;ZZLjava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJ)V

    .line 195
    iget-object v0, v14, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->uri:Ljava/lang/String;

    invoke-virtual {v14, v0}, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->playTTS(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayTTS spend : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLine"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    const/4 v1, 0x1

    .line 200
    invoke-virtual {v14, v1}, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->requestWindowFeature(I)Z

    goto :goto_9

    .line 202
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->finish()V

    goto :goto_9

    .line 205
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->finish()V

    :goto_9
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "keycode back, remove LoadingWindow; token="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->token:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GenieAIRouter"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-wide p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->token:J

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->exitWindows(J)V

    const/4 p1, 0x0

    return p1

    .line 238
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public playTTS(Ljava/lang/String;)V
    .locals 14

    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const-string v1, "playtts"

    .line 219
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 221
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mContent:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, -0x1

    .line 222
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mContent:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto :goto_1

    :cond_0
    const/4 v8, -0x1

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u4e3b\u4eba\uff0c\u6b63\u5728\u4e3a\u60a8\u6253\u5f00"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mAppName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->mAppName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-string v12, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v7, p0

    invoke-static/range {v7 .. v13}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    :cond_2
    :goto_1
    return-void
.end method
