.class public Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;
.super Lcom/taobao/aranger/core/ipc/provider/ARangerProvider;
.source "GenieRegistryInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller$Receiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GenieRegistryInstaller"


# instance fields
.field private mLoader:Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;

.field private mPgkUpdateReceiver:Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller$Receiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/taobao/aranger/core/ipc/provider/ARangerProvider;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;)Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;->mLoader:Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;

    return-object p0
.end method

.method static synthetic access$002(Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;)Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;->mLoader:Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;

    return-object p1
.end method

.method private registerPkgUpdate(Landroid/content/Context;)V
    .locals 2

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;->mPgkUpdateReceiver:Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller$Receiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;->mPgkUpdateReceiver:Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller$Receiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerProcessState()V
    .locals 1

    .line 45
    new-instance v0, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller$1;-><init>(Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;)V

    invoke-static {v0}, Lcom/taobao/aranger/ARanger;->registerProcessStateListener(Lcom/taobao/aranger/intf/ProcessStateListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onCreate()Z
    .locals 3

    const-string v0, "GenieRegistryInstaller"

    const-string v1, "onCreate() called"

    .line 26
    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/registry/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;->registerProcessState()V

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v1, Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;

    invoke-direct {v1, v0}, Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;->mLoader:Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;

    .line 33
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;->mLoader:Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 35
    new-instance v1, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller$Receiver;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller$Receiver;-><init>(Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;)V

    iput-object v1, p0, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;->mPgkUpdateReceiver:Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller$Receiver;

    .line 36
    invoke-direct {p0, v0}, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;->registerPkgUpdate(Landroid/content/Context;)V

    .line 41
    invoke-super {p0}, Lcom/taobao/aranger/core/ipc/provider/ARangerProvider;->onCreate()Z

    move-result v0

    return v0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
