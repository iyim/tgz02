.class public Lc/b/a/b/h/l;
.super Lc/b/a/b/h/k;
.source ""


# direct methods
.method public constructor <init>(Lc/b/a/b/h/i$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/b/a/b/h/k;-><init>(Lc/b/a/b/h/i$a;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1
    sget-object v2, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    new-instance v5, Lc/b/a/b/i/j;

    const-string v6, "installed_package"

    invoke-direct {v5, v0, v1, v6}, Lc/b/a/b/i/j;-><init>(JLjava/lang/String;)V

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v8, "apk_name"

    invoke-virtual {v5, v8, v7}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v8, "apk_version"

    invoke-virtual {v5, v8, v7}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    iget v7, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "apk_version_code"

    invoke-virtual {v5, v8, v7}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "app_name"

    invoke-virtual {v5, v8, v7}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v8, 0x1

    if-nez v9, :cond_1

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    const-string v8, "0"

    goto :goto_2

    :cond_1
    :goto_1
    const-string v8, "1"

    :goto_2
    const-string v9, "is_preinstall"

    invoke-virtual {v5, v9, v8}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string v9, "event_type"

    const-string v10, "app_scan"

    invoke-virtual {v5, v9, v10}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string v9, "event_name"

    invoke-virtual {v5, v9, v6}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Name:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v9, ", Label:"

    const-string v10, ",system app:"

    invoke-static {v6, v4, v9, v7, v10}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v6, Lc/b/a/b/h/l;

    invoke-static {v4, v6}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 3
    iget-object v4, p0, Lc/b/a/b/h/i;->a:Lc/b/a/b/h/i$a;

    check-cast v4, Lc/b/a/b/d;

    .line 4
    iget-object v4, v4, Lc/b/a/b/d;->n:Lc/b/a/b/e;

    invoke-virtual {v4, v5}, Lc/b/a/b/e;->a(Lc/b/a/b/i/i;)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
