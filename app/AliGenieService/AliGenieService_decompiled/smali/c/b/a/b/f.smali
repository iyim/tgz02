.class public Lc/b/a/b/f;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1
    sget-object v1, Lc/b/a/b/o/g;->P:Lc/b/a/b/d;

    if-nez v1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "collect engine is null, ignore action:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lc/b/a/b/f;

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, p2, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string v2, "Got action:"

    .line 4
    invoke-static {v2}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lc/b/a/b/f;

    invoke-static {v2, v3}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lc/b/a/b/h/o;

    invoke-direct {v0, v1}, Lc/b/a/b/h/o;-><init>(Lc/b/a/b/h/i$a;)V

    invoke-virtual {v0, p1, p2}, Lc/b/a/b/h/o;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_2
    return-void
.end method
