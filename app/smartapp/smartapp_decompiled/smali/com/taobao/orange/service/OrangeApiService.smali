.class public Lcom/taobao/orange/service/OrangeApiService;
.super Landroid/app/Service;
.source "OrangeApiService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OrangeApiService"


# instance fields
.field private mBinder:Lcom/taobao/orange/aidl/IOrangeApiService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/taobao/orange/service/OrangeApiService;->mBinder:Lcom/taobao/orange/aidl/IOrangeApiService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const/4 p1, 0x0

    .line 20
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "OrangeApiService"

    const-string v1, "onBind"

    invoke-static {v0, v1, p1}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-object p1, p0, Lcom/taobao/orange/service/OrangeApiService;->mBinder:Lcom/taobao/orange/aidl/IOrangeApiService$Stub;

    if-nez p1, :cond_0

    .line 22
    new-instance p1, Lcom/taobao/orange/aidl/OrangeApiServiceStub;

    invoke-direct {p1, p0}, Lcom/taobao/orange/aidl/OrangeApiServiceStub;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/taobao/orange/service/OrangeApiService;->mBinder:Lcom/taobao/orange/aidl/IOrangeApiService$Stub;

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/taobao/orange/service/OrangeApiService;->mBinder:Lcom/taobao/orange/aidl/IOrangeApiService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    const/4 v0, 0x0

    .line 35
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OrangeApiService"

    const-string v2, "onCreate"

    invoke-static {v1, v2, v0}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x0

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OrangeApiService"

    const-string v2, "onDestroy"

    invoke-static {v1, v2, v0}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x2

    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "intent"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "OrangeApiService"

    const-string v2, "onRebind"

    invoke-static {v1, v2, v0}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OrangeApiService"

    const-string v2, "onUnbind"

    invoke-static {v1, v2, v0}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
