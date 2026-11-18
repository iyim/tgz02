.class public Lc/b/a/b/o/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/b/o/h$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/a/b/o/h;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lc/b/a/b/o/h;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 8

    .line 1
    sget-object v0, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "PrefsFile"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v2, 0x0

    const-string v4, "lasttime"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lc/b/a/b/o/h;->c()V

    return v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lc/b/a/b/o/h;->c()V

    return v2

    :cond_2
    return v1
.end method

.method public b()Ljava/lang/String;
    .locals 3

    const-string v0, "0"

    const-string v1, "runtime.ic.eventime"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "runtime.ic.eventime"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    sget-object v0, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "PrefsFile"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "lasttime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
