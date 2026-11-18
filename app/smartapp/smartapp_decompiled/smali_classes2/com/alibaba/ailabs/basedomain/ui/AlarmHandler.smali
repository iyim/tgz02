.class public final Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;
.super Ljava/lang/Object;
.source "AlarmHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$MyCallback;,
        Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$SingletonLoader;
    }
.end annotation


# static fields
.field private static final BG_THREAD_NAME:Ljava/lang/String; = "BaseService-bg-thread"

.field public static final MSG_ALARM_RING:I = 0x9ca2

.field public static final MSG_EXIT_SELF:I = 0xc350

.field private static final MSG_PLAY_TTS:I = 0x2710

.field public static final MSG_STOP_ALARM_RING:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "AlarmHandler"


# instance fields
.field private mBgHandler:Landroid/os/Handler;

.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;
    .locals 1

    .line 69
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$SingletonLoader;->access$200()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBgHandler()Landroid/os/Handler;
    .locals 4

    const-string v0, "AlarmHandler"

    const-string v1, "getBgHandler() called"

    .line 44
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->mBgHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BaseService-bg-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$MyCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$MyCallback;-><init>(Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$1;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->mBgHandler:Landroid/os/Handler;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 4

    const-string v0, "AlarmHandler"

    const-string v1, "getMainHandler() called"

    .line 59
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$MyCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$MyCallback;-><init>(Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$1;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->mMainHandler:Landroid/os/Handler;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method
