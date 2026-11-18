.class public Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserInfoChangeReceiver.java"


# static fields
.field private static final BIND_USER:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.BINDUSER"

.field public static final ONLINE_ACTION:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.ONLINE"

.field public static final ONLINE_STATUS_KEY:Ljava/lang/String; = "gw_online_status"

.field private static final TAG:Ljava/lang/String; = "UserInfoChangeReceiver"

.field private static final UNBIND_USER:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.UNBINDUSER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfoChangeReceiver onReceive, action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserInfoChangeReceiver"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.alibaba.ailabs.genie.assistant.BINDUSER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance p2, Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver$1;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver$1;-><init>(Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 43
    new-instance p2, Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver$2;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver$2;-><init>(Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    :goto_0
    return-void
.end method
