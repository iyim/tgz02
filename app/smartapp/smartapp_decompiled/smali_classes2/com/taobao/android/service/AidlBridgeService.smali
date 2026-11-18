.class public Lcom/taobao/android/service/AidlBridgeService;
.super Landroid/app/Service;
.source "AidlBridgeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/service/AidlBridgeService$SingletonServiceConnection;
    }
.end annotation


# static fields
.field private static final KBridgeServiceName:Ljava/lang/String; = "com.taobao.android.service.AidlBridgeService"

.field private static final sDummyReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mBridgeBinder:Lcom/taobao/android/modular/IAidlServiceBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Lcom/taobao/android/service/AidlBridgeService$2;

    invoke-direct {v0}, Lcom/taobao/android/service/AidlBridgeService$2;-><init>()V

    sput-object v0, Lcom/taobao/android/service/AidlBridgeService;->sDummyReceiver:Landroid/content/BroadcastReceiver;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    new-instance v0, Lcom/taobao/android/service/AidlBridgeService$1;

    invoke-direct {v0, p0}, Lcom/taobao/android/service/AidlBridgeService$1;-><init>(Lcom/taobao/android/service/AidlBridgeService;)V

    iput-object v0, p0, Lcom/taobao/android/service/AidlBridgeService;->mBridgeBinder:Lcom/taobao/android/modular/IAidlServiceBridge;

    return-void
.end method

.method public static init(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 2

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/taobao/android/service/AidlBridgeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method public static peekMe(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 3

    .line 108
    sget-object v0, Lcom/taobao/android/service/AidlBridgeService;->sDummyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/taobao/android/service/AidlBridgeService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/BroadcastReceiver;->peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5

    .line 38
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/taobao/android/service/AidlBridgeService;->mBridgeBinder:Lcom/taobao/android/modular/IAidlServiceBridge;

    check-cast p1, Landroid/os/IBinder;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/android/service/AidlBridgeService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0}, Lcom/taobao/android/service/AidlBridgeService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 41
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 42
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 43
    sget-object v3, Lcom/taobao/android/service/AidlBridgeService;->KBridgeServiceName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 44
    :cond_2
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/service/AidlBridgeService;->mBridgeBinder:Lcom/taobao/android/modular/IAidlServiceBridge;

    invoke-interface {v1, p1}, Lcom/taobao/android/modular/IAidlServiceBridge;->bindService(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v1

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_3
    :goto_1
    return-object v0
.end method
