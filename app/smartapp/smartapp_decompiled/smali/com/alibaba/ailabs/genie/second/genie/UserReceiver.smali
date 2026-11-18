.class public final Lcom/alibaba/ailabs/genie/second/genie/UserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserReceiver"

.field private static final USER_ACTION_BIND:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.BINDUSER"

.field private static final USER_ACTION_UNBIND:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.UNBINDUSER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.assistant.BINDUSER"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "UserReceiver"

    if-nez p2, :cond_0

    const-string p2, "onReceive() called intent is null"

    .line 22
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 26
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u52a8\u6001\u5e7f\u64ad action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "com.alibaba.ailabs.genie.assistant.BINDUSER"

    .line 30
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 32
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->reloadAuthInfo()V

    goto :goto_0

    :cond_1
    const-string p1, "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

    .line 35
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 36
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->clear()V

    :cond_2
    :goto_0
    return-void
.end method
