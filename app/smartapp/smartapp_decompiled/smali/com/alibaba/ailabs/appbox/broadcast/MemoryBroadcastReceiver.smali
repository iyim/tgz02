.class public Lcom/alibaba/ailabs/appbox/broadcast/MemoryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MemoryBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MemoryBroadcastReceiver"

    .line 17
    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string p2, "android.intent.action.DEVICE_STORAGE_OK"

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string p2, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 26
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->cleanAllAppCache(Landroid/content/Context;)V

    .line 32
    new-instance p1, Lcom/alibaba/ailabs/appbox/dialog/DialogStorageLow;

    invoke-direct {p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogStorageLow;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogStorageLow;->show()V

    :cond_0
    return-void
.end method
