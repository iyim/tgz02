.class public Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;
.super Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;
.source "ApiActivity.java"


# static fields
.field private static final CHILDREN:Ljava/lang/String; = "com.alibaba.ailabs.genie.children"

.field private static final EYE_YIELD_OPEN_TIP:Ljava/lang/String; = "\u62a4\u773c\u6a21\u5f0f\u5df2\u5f00\u542f"

.field private static FROM_APP:Ljava/lang/CharSequence; = null

.field public static final FROM_LAUNCHER:Ljava/lang/String; = "launcher"

.field public static final FROM_SETTING:Ljava/lang/String; = "setting"

.field private static final LAUNCHER:Ljava/lang/String; = "com.alibaba.ailabs.genie.launcher"

.field private static final TAG:Ljava/lang/String; = "ApiActivity"


# instance fields
.field mChangeEyeYieldModeFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

.field mCheckCameraOpenFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

.field mGotoChildFaceFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

.field private mGotoChildMode:Z

.field mGotoEyeYieldModeTipFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

.field mGotoLauncherFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

.field private mHandler:Landroid/os/Handler;

.field private mMainHandler:Landroid/os/Handler;

.field mSetPasswordFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

.field mValidatePasswordFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "genieApp"

    .line 36
    sput-object v0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->FROM_APP:Ljava/lang/CharSequence;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mMainHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mHandler:Landroid/os/Handler;

    .line 183
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$3;

    new-instance v1, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$2;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$3;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mSetPasswordFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 207
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$5;

    new-instance v1, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$4;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$5;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mGotoLauncherFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 254
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$7;

    new-instance v1, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$6;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$7;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mCheckCameraOpenFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 271
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$9;

    new-instance v1, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$8;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$9;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mGotoEyeYieldModeTipFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 289
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$11;

    new-instance v1, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$10;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$11;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mGotoChildFaceFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 304
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$13;

    new-instance v1, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$12;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$12;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$13;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mValidatePasswordFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 325
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$15;

    new-instance v1, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$14;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$14;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$15;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mChangeEyeYieldModeFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mGotoChildMode:Z

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->onExitChildMode()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private isChildFaceOpen()Z
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildRecognizeStatus(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static needSetSecret(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "CommUtils"

    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "sp_name_child_mode"

    .line 342
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "last_no_set_secret_time"

    const-wide/16 v2, 0x0

    .line 343
    invoke-interface {p0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    .line 346
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "needSetSecret distance time:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 p0, 0x5265c00

    cmp-long v4, v2, p0

    if-lez v4, :cond_0

    const-string p0, "exceed 24h, show set password ui"

    .line 348
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 352
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method private onExitChildMode()V
    .locals 9

    const-string v0, "0"

    const-string v1, "persist.sys.isPlaying"

    .line 246
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 250
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v4, "genie://com.alibaba.ailabs.genie.smartapp/voice?text=\u6682\u505c"

    invoke-static/range {v3 .. v8}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->open(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "com.alibaba.ailabs.genie.launcher"

    .line 55
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->setFinishOnTouchOutside(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 60
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "10086  onCreate intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ApiActivity"

    invoke-static {v4, v3}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->finish()V

    .line 65
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate open by uri:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alibaba/ailabs/genie/time/utils/AGUILog;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getPassword()Ljava/lang/String;

    move-result-object v3

    const-string v5, "type"

    .line 69
    invoke-virtual {v2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "from"

    .line 74
    invoke-virtual {v2, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ""

    if-eqz v1, :cond_2

    :try_start_1
    const-string v7, "fromtype"

    .line 76
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v6

    .line 77
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "voice"

    if-nez v7, :cond_3

    :try_start_2
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v2, v8

    .line 81
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "password: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " value:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "open"

    .line 83
    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 84
    iput-boolean p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mGotoChildMode:Z

    .line 85
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->reset()V

    .line 86
    sget-object p1, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->FROM_APP:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "onCreate enter child mode ,  from app , do not validate password"

    .line 87
    invoke-static {v4, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mGotoLauncherFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 89
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->add(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mGotoEyeYieldModeTipFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 90
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->add(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mCheckCameraOpenFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 91
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->add(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->next()V

    goto :goto_2

    .line 94
    :cond_4
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mGotoLauncherFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 95
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->add(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->next()V

    .line 97
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$1;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    :goto_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "enter_childmode_src"

    .line 113
    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Kids_desktop"

    const-string v1, "enter_childmode_from"

    .line 114
    invoke-static {v0, v1, v6, v6, p1}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sendInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_5

    :cond_5
    const-string p1, "exit"

    .line 116
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "persist.sys.is.child.mode"

    .line 117
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getBooleanSystemProperties(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_7

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {v4, p1}, Lcom/alibaba/ailabs/genie/time/utils/AGUILog;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "childModeSettingBean = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/misc/ProcessUtil;->getPidFromProcessName(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    if-eq p1, v2, :cond_6

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/misc/ProcessUtil;->killProcessByPackagename(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 126
    :cond_6
    sget p1, Lcom/alibaba/ailabs/genie/timestatistics/R$string;->no_child_mode:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 128
    :goto_3
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->finish()V

    return-void

    .line 132
    :cond_7
    iput-boolean v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mGotoChildMode:Z

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate exit child mode , password:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isEmpty:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->reset()V

    .line 135
    sget-object p1, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->FROM_APP:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "setting"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    .line 143
    :cond_8
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->isChildFaceOpen()Z

    move-result p1

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: isChildface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_9

    .line 146
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mGotoChildFaceFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 147
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->add(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mGotoLauncherFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 148
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->add(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mChangeEyeYieldModeFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 149
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->add(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->next()V

    goto :goto_5

    .line 152
    :cond_9
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mValidatePasswordFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 153
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->add(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mGotoLauncherFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 154
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->add(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mChangeEyeYieldModeFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 155
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->add(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->next()V

    goto :goto_5

    :cond_a
    :goto_4
    const-string p1, "onCreate exit child mode ,  from app , do not validate password"

    .line 136
    invoke-static {v4, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mGotoLauncherFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 138
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->add(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mChangeEyeYieldModeFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 139
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->add(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->next()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 169
    invoke-super {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->onDestroy()V

    const-string v0, "ApiActivity"

    const-string v1, "onDestroy "

    .line 170
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 172
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
