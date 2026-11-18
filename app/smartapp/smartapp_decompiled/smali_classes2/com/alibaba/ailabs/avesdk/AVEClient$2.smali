.class Lcom/alibaba/ailabs/avesdk/AVEClient$2;
.super Ljava/lang/Object;
.source "AVEClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/avesdk/AVEClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/avesdk/AVEClient;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$200(Lcom/alibaba/ailabs/avesdk/AVEClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onServiceConnected"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --- "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$300(Lcom/alibaba/ailabs/avesdk/AVEClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$000(Lcom/alibaba/ailabs/avesdk/AVEClient;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$000(Lcom/alibaba/ailabs/avesdk/AVEClient;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$400(Lcom/alibaba/ailabs/avesdk/AVEClient;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p2}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$502(Lcom/alibaba/ailabs/avesdk/AVEClient;Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;)Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    .line 114
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$500(Lcom/alibaba/ailabs/avesdk/AVEClient;)Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$300(Lcom/alibaba/ailabs/avesdk/AVEClient;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "init"

    const-string v2, "GenieMonitor"

    invoke-interface {p1, p2, v1, v2}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->ioctlV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 115
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$500(Lcom/alibaba/ailabs/avesdk/AVEClient;)Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$300(Lcom/alibaba/ailabs/avesdk/AVEClient;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$600(Lcom/alibaba/ailabs/avesdk/AVEClient;)Lcom/alibaba/ailabs/acamera/IACameraCallback;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->registerCallbackV2(Ljava/lang/String;Lcom/alibaba/ailabs/acamera/IACameraCallback;)V

    .line 117
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$700(Lcom/alibaba/ailabs/avesdk/AVEClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$700(Lcom/alibaba/ailabs/avesdk/AVEClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore cmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v3}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$300(Lcom/alibaba/ailabs/avesdk/AVEClient;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {v2, p2, v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$800(Lcom/alibaba/ailabs/avesdk/AVEClient;)Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "restore cmd = registerCameraDataCallback mStoreCallback = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$800(Lcom/alibaba/ailabs/avesdk/AVEClient;)Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$300(Lcom/alibaba/ailabs/avesdk/AVEClient;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget-object p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$900(Lcom/alibaba/ailabs/avesdk/AVEClient;)I

    move-result p2

    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1000(Lcom/alibaba/ailabs/avesdk/AVEClient;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$800(Lcom/alibaba/ailabs/avesdk/AVEClient;)Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->registerCameraDataCallback(IILcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;)Z

    .line 128
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1100(Lcom/alibaba/ailabs/avesdk/AVEClient;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "restore cmd = setSurface"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1100(Lcom/alibaba/ailabs/avesdk/AVEClient;)Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget-object p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1100(Lcom/alibaba/ailabs/avesdk/AVEClient;)Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->setSurface(Landroid/view/Surface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1202(Lcom/alibaba/ailabs/avesdk/AVEClient;Z)Z

    .line 140
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1300(Lcom/alibaba/ailabs/avesdk/AVEClient;)Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 141
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1300(Lcom/alibaba/ailabs/avesdk/AVEClient;)Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;

    move-result-object p1

    const-string p2, "onServiceConnected"

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;->eventCallback(Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mAVEClientCallback == null --- "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$300(Lcom/alibaba/ailabs/avesdk/AVEClient;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->e(Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$502(Lcom/alibaba/ailabs/avesdk/AVEClient;Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;)Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    const-string p1, "Panic onServiceConnected failed"

    .line 135
    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceDisconnected --- "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$300(Lcom/alibaba/ailabs/avesdk/AVEClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1202(Lcom/alibaba/ailabs/avesdk/AVEClient;Z)Z

    .line 151
    const-class p1, Lcom/alibaba/ailabs/avesdk/AVEClient;

    monitor-enter p1

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$502(Lcom/alibaba/ailabs/avesdk/AVEClient;Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;)Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    .line 153
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1402(Lcom/alibaba/ailabs/avesdk/AVEClient;Z)Z

    .line 155
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1500(Lcom/alibaba/ailabs/avesdk/AVEClient;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1500(Lcom/alibaba/ailabs/avesdk/AVEClient;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1600(Lcom/alibaba/ailabs/avesdk/AVEClient;Landroid/content/Context;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 153
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
