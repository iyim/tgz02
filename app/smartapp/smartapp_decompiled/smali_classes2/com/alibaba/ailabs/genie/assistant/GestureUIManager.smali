.class public Lcom/alibaba/ailabs/genie/assistant/GestureUIManager;
.super Ljava/lang/Object;
.source "GestureUIManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "GestureUIManager"

.field private static sInstance:Lcom/alibaba/ailabs/genie/assistant/GestureUIManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGestureAnimationController:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GestureUIManager;->mContext:Landroid/content/Context;

    .line 35
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->getInstance()Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GestureUIManager;->mGestureAnimationController:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    .line 36
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->getInstance()Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->init(Landroid/content/Context;)V

    .line 37
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    const v0, 0xc351

    .line 38
    invoke-virtual {p1, v0, p0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->registerEventDispatcher(ILcom/alibaba/ailabs/agui/event/OnMmiEventCallback;)J

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/GestureUIManager;
    .locals 2

    .line 23
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/GestureUIManager;->sInstance:Lcom/alibaba/ailabs/genie/assistant/GestureUIManager;

    if-nez v0, :cond_1

    .line 24
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/GestureUIManager;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/GestureUIManager;->sInstance:Lcom/alibaba/ailabs/genie/assistant/GestureUIManager;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/GestureUIManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/GestureUIManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/assistant/GestureUIManager;->sInstance:Lcom/alibaba/ailabs/genie/assistant/GestureUIManager;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 30
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/assistant/GestureUIManager;->sInstance:Lcom/alibaba/ailabs/genie/assistant/GestureUIManager;

    return-object p0
.end method

.method private onGestureUI(IILorg/json/JSONObject;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GestureUIManager;->mGestureAnimationController:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->getGestureUi(IILorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public onDispatchEvent(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
    .locals 3

    .line 50
    invoke-virtual {p1}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->getCode()I

    move-result v0

    const v1, 0xc351

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "GestureUIManager"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "mode"

    .line 55
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "action"

    .line 56
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "data"

    .line 57
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 59
    invoke-direct {p0, p1, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/GestureUIManager;->onGestureUI(IILorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
