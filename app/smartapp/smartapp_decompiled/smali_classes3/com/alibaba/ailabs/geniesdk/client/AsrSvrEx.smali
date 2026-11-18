.class public Lcom/alibaba/ailabs/geniesdk/client/AsrSvrEx;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "AsrSvrEx.java"


# static fields
.field private static final METHOD_CLIENT_TO_ASR:I = 0x8

.field private static final METHOD_OLD_ASR_CLIENT:I = 0x9

.field private static final METHOD_REGISTER:I = 0x0

.field private static final METHOD_RESULT_MODE:I = 0x6

.field private static final METHOD_SERVER_MODE:I = 0x5

.field private static final METHOD_SET_BACKGROUND_SERVICE:I = 0x4

.field private static final METHOD_SET_ENABLE:I = 0x2

.field private static final METHOD_SET_WINDOW_TYPE:I = 0x3

.field private static final METHOD_SHOW_ASR_UI:I = 0x7

.field private static final METHOD_UNREGISTER:I = 0x1

.field private static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.asr"


# instance fields
.field private mClientManager:Lcom/alibaba/ailabs/geniesdk/client/ClientManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/geniesdk/client/ClientManager;Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrSvrEx;->mClientManager:Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

    return-void
.end method

.method private getClientManager()Lcom/alibaba/ailabs/geniesdk/client/ClientManager;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrSvrEx;->mClientManager:Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

    return-object v0
.end method


# virtual methods
.method public getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.asr"

    return-object v0
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .line 41
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/client/AsrSvrEx;->getClientManager()Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

    move-result-object v0

    const-string v1, "su"

    const-string v2, "rm"

    const-string v3, "sm"

    const-string v4, "bs"

    const-string v5, "wt"

    const-string v6, "e"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "k"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 132
    :pswitch_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->getIAliTVASR()Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;

    move-result-object p1

    .line 134
    invoke-static {v8, v8, p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_1
    const/4 p1, -0x1

    const-string v1, "id"

    .line 126
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 128
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->clientToAsr(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    goto/16 :goto_0

    .line 118
    :pswitch_2
    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-virtual {p2, v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 121
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->showASRUI(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 110
    :pswitch_3
    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 113
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->setResultMode(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 102
    :pswitch_4
    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 105
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->setServerMode(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 94
    :pswitch_5
    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 97
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->setBackgroundService(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 86
    :pswitch_6
    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 89
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->setWindowType(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 78
    :pswitch_7
    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 81
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->setEnable(Ljava/lang/String;Z)V

    goto :goto_0

    .line 71
    :pswitch_8
    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->unregisterCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :pswitch_9
    invoke-static {p2}, Lcom/alibaba/ailabs/geniesdk/client/AsrSvrEx;->getBinder(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v9, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;

    invoke-direct {v9}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;-><init>()V

    const-string v10, "pn"

    .line 53
    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->setPackageName(Ljava/lang/String;)V

    const-string v10, "p"

    .line 54
    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->setPkg(Ljava/lang/String;)V

    const-string v10, "cn"

    .line 55
    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->setClassName(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2, v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->setShowUI(Z)V

    .line 57
    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->setEnable(Z)V

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v9, v4}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->setBackgroundService(Z)V

    .line 59
    invoke-virtual {p2, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->setWindowType(Z)V

    .line 60
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->setResultMode(I)V

    .line 61
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v9, p2}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->setServerMode(I)V

    .line 64
    new-instance p2, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;

    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/ICommu$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/ipc/ICommu;

    move-result-object p1

    invoke-virtual {v9}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p1, v1}, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;-><init>(Lcom/alibaba/ailabs/ipc/ICommu;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v9, p2}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->registerCallback(Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;)V

    :goto_0
    return-object v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
