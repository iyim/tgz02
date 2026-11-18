.class public Lcom/alibaba/ailabs/genie/assistant/PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageReceiver.java"


# static fields
.field private static final MSG_UPLOAD_PKG:I = 0x3e9

.field private static final UPLOAD_TIMEOUT:I = 0x3e8


# instance fields
.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/PackageReceiver$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/assistant/PackageReceiver$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/PackageReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/PackageReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/PackageReceiver;)Landroid/content/Context;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/PackageReceiver;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/PackageReceiver;->mContext:Landroid/content/Context;

    .line 32
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/PackageReceiver;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x3e9

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/PackageReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
