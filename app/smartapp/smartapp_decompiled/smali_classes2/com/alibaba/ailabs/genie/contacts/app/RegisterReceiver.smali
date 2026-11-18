.class public Lcom/alibaba/ailabs/genie/contacts/app/RegisterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RegisterReceiver.java"


# static fields
.field public static final ACTION_BIND_USR:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.BINDUSER"

.field public static final ACTION_UNBIND_USR:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

.field private static final TAG:Ljava/lang/String; = "contacts_RegisterReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic lambda$onReceive$123()V
    .locals 2

    const-string v0, "contacts_RegisterReceiver"

    const-string v1, "clean databases..."

    .line 35
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->getInstance()Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->dropTables()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_3

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive.action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_RegisterReceiver"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 34
    sget-object p2, Lcom/alibaba/ailabs/genie/contacts/app/-$$Lambda$RegisterReceiver$Zm8SWPTBDC_14w6fMGPfQnFpQn0;->INSTANCE:Lcom/alibaba/ailabs/genie/contacts/app/-$$Lambda$RegisterReceiver$Zm8SWPTBDC_14w6fMGPfQnFpQn0;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/utils/taskpool/FileTaskPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.alibaba.ailabs.genie.assistant.BINDUSER"

    .line 38
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 43
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->reloadAuthInfo()V

    .line 45
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "is_show_dialog"

    invoke-static {p1, v0, p2}, Lcom/alibaba/ailabs/genie/contacts/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method
