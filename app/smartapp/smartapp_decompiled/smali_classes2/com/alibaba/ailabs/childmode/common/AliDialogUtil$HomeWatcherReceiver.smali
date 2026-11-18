.class Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$HomeWatcherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AliDialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeWatcherReceiver"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HomeReceiver"

.field private static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field private static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 543
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$1;)V
    .locals 0

    .line 543
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$HomeWatcherReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 555
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 557
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 559
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->closeGlobalNetworkDialog()V

    goto :goto_0

    :cond_0
    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 561
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "reason"

    .line 562
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "homekey"

    .line 565
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 567
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->closeGlobalNetworkDialog()V

    .line 569
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->access$600()V

    :cond_1
    :goto_0
    return-void
.end method
