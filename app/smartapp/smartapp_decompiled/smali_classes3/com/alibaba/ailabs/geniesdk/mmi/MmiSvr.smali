.class public Lcom/alibaba/ailabs/geniesdk/mmi/MmiSvr;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "MmiSvr.java"


# static fields
.field private static sInstance:Lcom/alibaba/ailabs/geniesdk/mmi/MmiSvr;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/mmi/MmiSvr;
    .locals 2

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/mmi/MmiSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/mmi/MmiSvr;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/mmi/MmiSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/mmi/MmiSvr;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/alibaba/ailabs/geniesdk/mmi/MmiSvr;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/geniesdk/mmi/MmiSvr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/geniesdk/mmi/MmiSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/mmi/MmiSvr;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 27
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/geniesdk/mmi/MmiSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/mmi/MmiSvr;

    return-object p0
.end method


# virtual methods
.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    .line 40
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "r"

    const-string v3, "pt"

    const-string v4, "t"

    const-string v5, "e"

    const/4 v6, -0x1

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 101
    :pswitch_0
    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 102
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 103
    invoke-virtual {v0, p1, p2, v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->notifyClientDied(ILjava/lang/String;Z)V

    .line 105
    invoke-static {v7}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-static {p2}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->toEvent(Landroid/os/Bundle;)Lcom/alibaba/ailabs/agui/event/MmiEvent;

    move-result-object p1

    .line 91
    invoke-virtual {p2, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 93
    invoke-virtual {v0, p2, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->onResponseCapabilityProcessor(ILcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;

    move-result-object p1

    .line 94
    invoke-static {p1}, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->toBundle(Lcom/alibaba/ailabs/agui/event/MmiEventResponse;)Landroid/os/Bundle;

    move-result-object p1

    .line 96
    invoke-virtual {p1, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 81
    :pswitch_2
    invoke-virtual {p2, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 83
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->stopCapability(I)V

    .line 84
    invoke-static {v7}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 73
    :pswitch_3
    invoke-virtual {p2, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 75
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->startCapability(I)V

    .line 76
    invoke-static {v7}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 44
    :pswitch_4
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-static {p2}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->toEvent(Landroid/os/Bundle;)Lcom/alibaba/ailabs/agui/event/MmiEvent;

    move-result-object v4

    .line 47
    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 49
    invoke-virtual {v0, p2, p1, v4}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->sendCommand(ILjava/lang/String;Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;

    move-result-object p1

    .line 50
    invoke-static {p1}, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->toBundle(Lcom/alibaba/ailabs/agui/event/MmiEventResponse;)Landroid/os/Bundle;

    move-result-object p1

    .line 51
    invoke-virtual {p1, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 65
    :pswitch_5
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->unregisterClient(Ljava/lang/String;)V

    .line 68
    invoke-static {v7}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 56
    :pswitch_6
    invoke-static {p2}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBinder(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object p1

    .line 57
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 58
    invoke-virtual {v0, p2, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->registerClient(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 59
    invoke-static {v7}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_0

    .line 116
    invoke-static {v1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
