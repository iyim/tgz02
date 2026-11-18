.class public Lcom/alibaba/ailabs/genie/task/video/VideoTask;
.super Ljava/lang/Object;
.source "VideoTask.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/task/ITask;


# instance fields
.field public mContext:Landroid/content/Context;

.field private final onEventListener:Lcom/alibaba/ailabs/ipc/event/OnEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/alibaba/ailabs/genie/task/video/VideoTask$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/task/video/VideoTask$1;-><init>(Lcom/alibaba/ailabs/genie/task/video/VideoTask;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/VideoTask;->onEventListener:Lcom/alibaba/ailabs/ipc/event/OnEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/task/video/VideoTask;Lcom/alibaba/ailabs/ipc/event/Event;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/task/video/VideoTask;->processMsg(Lcom/alibaba/ailabs/ipc/event/Event;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private checkVideo(Ljava/lang/String;)Z
    .locals 4

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 56
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 58
    sget-object v2, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig;->VIDEO_URI:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "ykiot://short_video_player"

    .line 59
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const-string v2, "ykiot://news_player"

    .line 60
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ykiot://yingshi_home"

    .line 61
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mgtvapp://com.mgtv.tv/main"

    .line 62
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private processMsg(Lcom/alibaba/ailabs/ipc/event/Event;)V
    .locals 2

    .line 43
    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/event/Event;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "uri"

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMsg: uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskService-Video"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/ipc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->getInstance()Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->removeAllFloatWindow()V

    .line 47
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/task/video/VideoTask;->checkVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->getInstance()Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->getRecommendList(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/VideoTask;->mContext:Landroid/content/Context;

    const-string v0, "TaskService-Video"

    const-string v1, "onCreate"

    .line 38
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/message/MessageCenter;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/VideoTask;->onEventListener:Lcom/alibaba/ailabs/ipc/event/OnEventListener;

    const-string v1, "UriProcessMessage"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->subscribe(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "TaskService-Video"

    const-string v1, "onDestroy:"

    .line 74
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/VideoTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/message/MessageCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/VideoTask;->onEventListener:Lcom/alibaba/ailabs/ipc/event/OnEventListener;

    const-string v2, "UriProcessMessage"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->unsubscribe(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V

    .line 76
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->getInstance()Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->removeAllFloatWindow()V

    return-void
.end method

.method public onReceiver(Landroid/content/Intent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public runTick()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
