.class public Lcom/alibaba/ailabs/childmode/manager/TaskHelper;
.super Ljava/lang/Object;
.source "TaskHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/childmode/manager/TaskHelper$IMonitorSceneListener;
    }
.end annotation


# static fields
.field public static final PREVENT_ADDICTION_CONFIG:Ljava/lang/String; = "7P54eLtpJvYy"

.field public static final TAG:Ljava/lang/String; = "PreventAddictionNew"


# instance fields
.field private isEntertainment:Z

.field private isRegister:Z

.field private mClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

.field private mContext:Landroid/content/Context;

.field private mMonitorSceneListener:Lcom/alibaba/ailabs/childmode/manager/TaskHelper$IMonitorSceneListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper;->isEntertainment:Z

    .line 22
    iput-boolean v0, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper;->isRegister:Z

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper;->mContext:Landroid/content/Context;

    .line 26
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper;->mClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/childmode/manager/TaskHelper;Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;)Z
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/manager/TaskHelper;->checkEntertainment(Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/childmode/manager/TaskHelper;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper;->isEntertainment:Z

    return p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/childmode/manager/TaskHelper;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper;->isEntertainment:Z

    return p1
.end method

.method private checkEntertainment(Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;)Z
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper;->mContext:Landroid/content/Context;

    const-string v1, "7P54eLtpJvYy"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orange config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PreventAddictionNew"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 64
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->realPackageName:Ljava/lang/String;

    const-string v1, "com.youkuchild.android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->realPackageName:Ljava/lang/String;

    const-string v1, "com.youku.iot"

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->virtualPackageName:Ljava/lang/String;

    const-string v0, "10002001"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2

    .line 68
    :cond_2
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->realPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->virtualPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2
.end method


# virtual methods
.method public registerMonitorSceneListener(Lcom/alibaba/ailabs/childmode/manager/TaskHelper$IMonitorSceneListener;)V
    .locals 3

    .line 30
    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper;->isRegister:Z

    const-string v1, "PreventAddictionNew"

    if-eqz v0, :cond_0

    const-string p1, "register already..."

    .line 31
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper;->mMonitorSceneListener:Lcom/alibaba/ailabs/childmode/manager/TaskHelper$IMonitorSceneListener;

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper;->mClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    new-instance v2, Lcom/alibaba/ailabs/childmode/manager/TaskHelper$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/ailabs/childmode/manager/TaskHelper$1;-><init>(Lcom/alibaba/ailabs/childmode/manager/TaskHelper;Lcom/alibaba/ailabs/childmode/manager/TaskHelper$IMonitorSceneListener;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->setPackageListener(Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnPackageListener;)V

    .line 48
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper;->mClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->start()V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper;->isRegister:Z

    const-string p1, "registerMonitorSceneListener..."

    .line 50
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterMonitorSceneListener()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper;->mClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->stop()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper;->isRegister:Z

    const-string v0, "PreventAddictionNew"

    const-string v1, "unregisterMonitorSceneListener..."

    .line 56
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
