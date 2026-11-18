.class public Lcom/alibaba/ailabs/genie/musicplayer/receiver/UserBindBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserBindBroadCastReceiver.java"


# static fields
.field public static final BIND_ACTION:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.BINDUSER"

.field public static final UNBIND_ACTION:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.UNBINDUSER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "UNBINDUSER user"

    .line 31
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;)V

    .line 32
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.alibaba.ailabs.genie.musicplayer.cmd"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x12

    const-string v0, "Control"

    .line 33
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
