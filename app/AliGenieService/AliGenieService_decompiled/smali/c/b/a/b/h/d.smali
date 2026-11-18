.class public Lc/b/a/b/h/d;
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
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    const/16 v2, 0x9

    const-string v3, "networkType"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    const-string p2, "WIFI"

    goto :goto_0

    :cond_0
    if-ne p2, v2, :cond_1

    const-string p2, "ETHERNET"

    goto :goto_0

    :cond_1
    const/16 v2, 0xf

    if-ne p2, v2, :cond_2

    const-string p2, "PPPOE"

    goto :goto_0

    :cond_2
    const-string p2, "UNKNOWN"

    :goto_0
    invoke-static {}, Landroid/net/NetworkInfo$DetailedState;->values()[Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lc/b/a/b/i/e;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v0, "connectivity_state_changed"

    invoke-direct {v2, v4, v5, v0}, Lc/b/a/b/i/e;-><init>(JLjava/lang/String;)V

    const-string v4, "event_type"

    const-string v5, "network"

    invoke-virtual {v2, v4, v5}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string v4, "event_name"

    invoke-virtual {v2, v4, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string v0, "net_type"

    invoke-virtual {v2, v0, p2}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string p2, "state"

    invoke-virtual {v2, p2, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string p2, "up_time"

    invoke-virtual {v2, p2, p1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    .line 1
    iget-object p1, p0, Lc/b/a/b/h/i;->a:Lc/b/a/b/h/i$a;

    check-cast p1, Lc/b/a/b/d;

    .line 2
    iget-object p1, p1, Lc/b/a/b/d;->n:Lc/b/a/b/e;

    invoke-virtual {p1, v2}, Lc/b/a/b/e;->a(Lc/b/a/b/i/i;)V

    return v3
.end method
