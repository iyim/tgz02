.class public Lcom/alibaba/ailabs/comm/memory/MemoryGuardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MemoryGuardReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MemoryGuard.Receiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    if-eqz p2, :cond_4

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.DREAMING_STARTED"

    .line 37
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.DREAMING_STOPPED"

    .line 38
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SCREEN_ON"

    .line 39
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MemoryGuard.Receiver"

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    const-string p1, "stopMonitor"

    .line 49
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->getInstance()Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->stopMonitor()V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p2, "startMonitor"

    .line 44
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->getInstance()Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->startMonitor(Landroid/content/Context;)V

    :cond_4
    :goto_1
    return-void
.end method
