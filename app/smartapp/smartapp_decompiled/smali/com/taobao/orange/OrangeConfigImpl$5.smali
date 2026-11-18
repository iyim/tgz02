.class Lcom/taobao/orange/OrangeConfigImpl$5;
.super Ljava/lang/Object;
.source "OrangeConfigImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/orange/OrangeConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/orange/OrangeConfigImpl;


# direct methods
.method constructor <init>(Lcom/taobao/orange/OrangeConfigImpl;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/taobao/orange/OrangeConfigImpl$5;->this$0:Lcom/taobao/orange/OrangeConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const/4 p1, 0x0

    .line 503
    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "OrangeConfigImpl"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2, v0}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl$5;->this$0:Lcom/taobao/orange/OrangeConfigImpl;

    invoke-static {p2}, Lcom/taobao/orange/aidl/IOrangeApiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/taobao/orange/aidl/IOrangeApiService;

    move-result-object p2

    iput-object p2, v0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    .line 505
    iget-object p2, p0, Lcom/taobao/orange/OrangeConfigImpl$5;->this$0:Lcom/taobao/orange/OrangeConfigImpl;

    iget-object p2, p2, Lcom/taobao/orange/OrangeConfigImpl;->mIsBindingService:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 506
    iget-object p1, p0, Lcom/taobao/orange/OrangeConfigImpl$5;->this$0:Lcom/taobao/orange/OrangeConfigImpl;

    iget-object p1, p1, Lcom/taobao/orange/OrangeConfigImpl;->mBindServiceLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_0

    .line 507
    iget-object p1, p0, Lcom/taobao/orange/OrangeConfigImpl$5;->this$0:Lcom/taobao/orange/OrangeConfigImpl;

    iget-object p1, p1, Lcom/taobao/orange/OrangeConfigImpl;->mBindServiceLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 p1, 0x0

    .line 493
    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "OrangeConfigImpl"

    const-string v2, "onServiceDisconnected"

    invoke-static {v1, v2, v0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl$5;->this$0:Lcom/taobao/orange/OrangeConfigImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    .line 495
    iget-object v0, v0, Lcom/taobao/orange/OrangeConfigImpl;->mIsBindingService:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 496
    iget-object p1, p0, Lcom/taobao/orange/OrangeConfigImpl$5;->this$0:Lcom/taobao/orange/OrangeConfigImpl;

    iget-object p1, p1, Lcom/taobao/orange/OrangeConfigImpl;->mBindServiceLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_0

    .line 497
    iget-object p1, p0, Lcom/taobao/orange/OrangeConfigImpl$5;->this$0:Lcom/taobao/orange/OrangeConfigImpl;

    iget-object p1, p1, Lcom/taobao/orange/OrangeConfigImpl;->mBindServiceLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
