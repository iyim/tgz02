.class public Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;
.super Ljava/lang/Object;
.source "JumpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$SearchInterface;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;


# instance fields
.field private cancelAutoJump:Ljava/util/function/Function;

.field sLastClickTime:J

.field private searchCallbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$SearchInterface;",
            ">;"
        }
    .end annotation
.end field

.field private startPlayTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->sLastClickTime:J

    const-wide/16 v0, -0x1

    .line 155
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->startPlayTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->startPlayTime:J

    return-wide v0
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;
    .locals 2

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->sInstance:Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->sInstance:Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->sInstance:Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->sInstance:Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    return-object v0
.end method

.method private jumpToTarget(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 202
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->jumpToTarget(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private jumpToTarget(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, " click too fast, wait for a while "

    .line 115
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->d(Ljava/lang/String;)V

    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jumpToTarget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "JumpManager"

    invoke-static {v0, p3}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->open(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static resetData()V
    .locals 1

    const/4 v0, 0x0

    .line 228
    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->sInstance:Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private searchByString(Ljava/lang/String;)V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->searchCallbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$SearchInterface;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$SearchInterface;->searchByString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startAudio(Landroid/content/Context;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;)V
    .locals 3

    .line 124
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 125
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getExtra()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v1, "rawId"

    .line 127
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "itemId"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    .line 128
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "itemType"

    .line 129
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    .line 130
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "genie://com.alibaba.ailabs.genie.musicplayer?cmd=start&data="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->jumpToTarget(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startBaike(Landroid/content/Context;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;)V
    .locals 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start baike: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JumpManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.alibaba.ailabs.genie.smartapp"

    const-string v2, "com.alibaba.ailabs.basedomain.ui.BaseService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 140
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 141
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 142
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getExtra()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "renderData"

    .line 144
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "sessionID"

    const/16 v0, -0x2711

    .line 145
    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "pageType"

    const-string v0, "aligenie.baike.base"

    .line 146
    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "askAgain"

    const/4 v0, 0x0

    .line 147
    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelAutoJump()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->cancelAutoJump(Z)V

    return-void
.end method

.method public cancelAutoJump(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->cancelAutoJump:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    .line 213
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public isFastClick()Z
    .locals 7

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 51
    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->sLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x320

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 53
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->sLastClickTime:J

    :cond_1
    return v2
.end method

.method public jumpToTarget(Landroid/content/Context;Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;)V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, " click too fast, wait for a while "

    .line 78
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->d(Ljava/lang/String;)V

    return-void

    .line 82
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$3;->$SwitchMap$com$alibaba$ailabs$genie$globalsearch$data$GroupType:[I

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 107
    :pswitch_0
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->searchByString(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :pswitch_1
    invoke-direct {p0, p1, p3}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->startAudio(Landroid/content/Context;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;)V

    goto :goto_0

    .line 93
    :pswitch_2
    invoke-direct {p0, p1, p3}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->startBaike(Landroid/content/Context;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;)V

    goto :goto_0

    .line 89
    :pswitch_3
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->jumpToTarget(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    :goto_0
    sget-object p1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->baike:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->cancelAutoJump(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public playLongTTS(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 8

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " playLongTTS lastReportIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->d(Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->startPlayTime:J

    .line 162
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p3, v0, :cond_3

    add-int/lit8 v0, p3, 0x78

    .line 164
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 165
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u3002"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "\uff0c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    .line 168
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    move-object v3, v0

    .line 173
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    .line 174
    new-instance v7, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$1;

    invoke-direct {v7, p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$1;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v2, -0x2711

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v1, p1

    .line 187
    invoke-static/range {v1 .. v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto :goto_1

    .line 190
    :cond_3
    new-instance p1, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$2;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$2;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;)V

    .line 193
    sget-object p2, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->searchResPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    const-string p3, "playBaikeTTS"

    invoke-static {p2, p3, p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->customHit(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/lang/String;Ljava/util/Map;)V

    :goto_1
    return-void
.end method

.method public searchByGroupBean(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;)V
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->searchCallbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$SearchInterface;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$SearchInterface;->searchByGroupBean(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;)V

    :cond_0
    return-void
.end method

.method public setCancelAutoJump(Ljava/util/function/Function;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->cancelAutoJump:Ljava/util/function/Function;

    return-void
.end method

.method public setSearchCallback(Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$SearchInterface;)V
    .locals 1

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->searchCallbackRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public stopTTSIfNeeded(Landroid/content/Context;)V
    .locals 1

    const/16 v0, -0x2711

    .line 198
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->stopTTS(Landroid/content/Context;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
