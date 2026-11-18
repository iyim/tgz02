.class public Lc/b/a/b/h/o;
.super Lc/b/a/b/h/h;
.source ""


# direct methods
.method public constructor <init>(Lc/b/a/b/h/i$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/b/a/b/h/h;-><init>(Lc/b/a/b/h/i$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 9

    const-class p1, Lc/b/a/b/h/o;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "INSTALL_FILE_URI"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "remove"

    if-eqz v5, :cond_2

    const-string v2, "update"

    goto :goto_1

    :cond_2
    const-string v5, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    return v3

    :cond_3
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string v2, "install"

    goto :goto_1

    :cond_4
    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    move-object v2, v6

    :cond_5
    :goto_1
    if-eqz v2, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-instance v0, Lc/b/a/b/i/l;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string p2, "package_update_info"

    invoke-direct {v0, v7, v8, p2}, Lc/b/a/b/i/l;-><init>(JLjava/lang/String;)V

    const-string v5, "apk_name"

    invoke-virtual {v0, v5, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string v5, "event_name"

    invoke-virtual {v0, v5, v2}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string v5, "event_type"

    invoke-virtual {v0, v5, p2}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string p2, "source"

    invoke-virtual {v0, p2, v4}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string p2, "apk_version_before"

    const-string v4, ""

    invoke-virtual {v0, p2, v4}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v2, "apk_version_after"

    const-string v4, "app_name"

    const-string v5, "GetValueNull"

    if-nez p2, :cond_6

    .line 1
    :try_start_0
    sget-object p2, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 2
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Name:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", Label:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v4, p2}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    iget-object p2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    const-string v1, "can\'t found package"

    invoke-static {v1, p1, p2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_6
    invoke-virtual {v0, v4, v5}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    invoke-virtual {v0, v2, v5}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    .line 3
    :goto_2
    iget-object p1, p0, Lc/b/a/b/h/i;->a:Lc/b/a/b/h/i$a;

    check-cast p1, Lc/b/a/b/d;

    .line 4
    iget-object p1, p1, Lc/b/a/b/d;->n:Lc/b/a/b/e;

    invoke-virtual {p1, v0}, Lc/b/a/b/e;->a(Lc/b/a/b/i/i;)V

    :cond_7
    const/4 p1, 0x1

    return p1
.end method
