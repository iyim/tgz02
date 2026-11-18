.class public Lcom/taobao/orange/receiver/OrangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OrangeReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OrangeReceiver"

.field public static volatile networkValid:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 24
    invoke-static {p1}, Lcom/taobao/orange/util/AndroidUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 25
    sget-boolean p1, Lcom/taobao/orange/receiver/OrangeReceiver;->networkValid:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 26
    sput-boolean p1, Lcom/taobao/orange/receiver/OrangeReceiver;->networkValid:Z

    .line 27
    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "OrangeReceiver"

    const-string v0, "onReceive network valid"

    invoke-static {p2, v0, p1}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    new-instance p1, Lcom/taobao/orange/receiver/OrangeReceiver$1;

    invoke-direct {p1, p0}, Lcom/taobao/orange/receiver/OrangeReceiver$1;-><init>(Lcom/taobao/orange/receiver/OrangeReceiver;)V

    invoke-static {p1}, Lcom/taobao/orange/OThreadFactory;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 36
    :cond_1
    sput-boolean p2, Lcom/taobao/orange/receiver/OrangeReceiver;->networkValid:Z

    :cond_2
    :goto_0
    return-void
.end method
