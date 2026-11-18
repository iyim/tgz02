.class public Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$RefreshMessageStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefreshMessageStatusReceiver"
.end annotation


# static fields
.field public static final BROADCAST_ACTION:Ljava/lang/String; = "com.alibaba.ailabs.genie.message.ACTION_STATUS_NOTIFY"

.field private static final MESSAGE_REFRESH_KEY:Ljava/lang/String; = "MessageStatus"


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)V
    .locals 0

    .line 1502
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$RefreshMessageStatusReceiver;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1508
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.alibaba.ailabs.genie.message.ACTION_STATUS_NOTIFY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "MessageStatus"

    .line 1509
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MessageUnReadNumber"

    .line 1511
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1512
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: MessageStatus="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageOnReceive"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    new-instance p1, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$RefreshMessageStatusReceiver$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$RefreshMessageStatusReceiver$1;-><init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$RefreshMessageStatusReceiver;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
