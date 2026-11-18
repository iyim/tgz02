.class public Lcom/aligenie/ags/access/AccessBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "Access"

    iput-object v0, p0, Lcom/aligenie/ags/access/AccessBroadcastReceiver;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aligenie/ags/access/AccessBroadcastReceiver;->a:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x3

    const-string v1, "receiver ACTION_BOOT_COMPLETED"

    .line 1
    invoke-static {p1, v0, v1, p2}, Lc/b/a/a/d/f;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
