.class public Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;
.super Ljava/lang/Object;
.source "RegisterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final MSG_REGISTER:I = 0x0

.field private static final REGISTER_RETRY_LONG_PERIOD:J = 0x493e0L

.field private static final REGISTER_RETRY_SHORT_PERIOD:J = 0x7530L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

.field private mRetryTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RegisterManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->mRetryTimes:I

    .line 34
    new-instance v0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$1;-><init>(Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->mRetryTimes:I

    return p0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->mRetryTimes:I

    return p1
.end method

.method static synthetic access$208(Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;)I
    .locals 2

    .line 21
    iget v0, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->mRetryTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->mRetryTimes:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-object p0
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;
    .locals 1

    .line 52
    invoke-static {}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$SingletonHolder;->access$100()Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;

    move-result-object v0

    return-object v0
.end method

.method public static registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public tryRegister()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->tryRegister(Z)V

    return-void
.end method

.method public tryRegister(Z)V
    .locals 2

    .line 61
    new-instance v0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$2;-><init>(Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;)V

    .line 70
    new-instance v1, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$3;-><init>(Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;ZLcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager$RunnableEx;)V

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->postBackground(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
