.class public Lcom/alibaba/ailabs/genie/smartapp/receiver/UnBindReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UnBindReceiver.java"


# static fields
.field public static final ACTION_UNBIND_USR:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

.field private static final PKG_AMPE_ACTION:Ljava/lang/String; = "com.alibaba.ailabs.genie.ampe.LOGOUT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private sendUnbindMessageToAMPE(Landroid/content/Context;)V
    .locals 4

    const-string v0, "QUICK"

    const-string v1, "sendUnbindMessageToAMPE:com.alibaba.ailabs.genie.ampe.LOGOUT"

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.ampe.LOGOUT"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.alipay.arome.app"

    const-string v3, "com.alibaba.ailabs.genie.webapps.app.GwaReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/smartapp/receiver/UnBindReceiver;->sendUnbindMessageToAMPE(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
