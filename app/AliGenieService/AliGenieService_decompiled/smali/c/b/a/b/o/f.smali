.class public Lc/b/a/b/o/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:J = 0x384L


# direct methods
.method public static a()Z
    .locals 2

    const-string v0, "sys.genie.testmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
