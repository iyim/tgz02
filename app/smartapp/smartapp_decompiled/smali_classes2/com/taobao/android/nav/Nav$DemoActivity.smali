.class Lcom/taobao/android/nav/Nav$DemoActivity;
.super Landroid/app/Activity;
.source "Nav.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/nav/Nav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DemoActivity"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method buildTaskStack(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1

    .line 54
    invoke-static {p0}, Lcom/taobao/android/nav/Nav;->from(Landroid/content/Context;)Lcom/taobao/android/nav/Nav;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/android/nav/Nav;->stack(Landroid/net/Uri;)Lcom/taobao/android/nav/Nav;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/taobao/android/nav/Nav;->toUri(Landroid/net/Uri;)Z

    return-void
.end method

.method openItem(J)V
    .locals 3

    .line 50
    invoke-static {p0}, Lcom/taobao/android/nav/Nav;->from(Landroid/content/Context;)Lcom/taobao/android/nav/Nav;

    move-result-object v0

    const-string v1, "item.taobao.com"

    invoke-static {v1}, Lcom/taobao/android/nav/NavUri;->host(Ljava/lang/String;)Lcom/taobao/android/nav/NavUri;

    move-result-object v1

    const-string v2, "item.htm"

    invoke-virtual {v1, v2}, Lcom/taobao/android/nav/NavUri;->path(Ljava/lang/String;)Lcom/taobao/android/nav/NavUri;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2, p1, p2}, Lcom/taobao/android/nav/NavUri;->param(Ljava/lang/String;J)Lcom/taobao/android/nav/NavUri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/android/nav/Nav;->toUri(Lcom/taobao/android/nav/NavUri;)Z

    return-void
.end method

.method openUriWithinWebview(Landroid/net/Uri;)V
    .locals 2

    .line 58
    invoke-static {p0}, Lcom/taobao/android/nav/Nav;->from(Landroid/content/Context;)Lcom/taobao/android/nav/Nav;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/taobao/android/nav/Nav;->disallowLoopback()Lcom/taobao/android/nav/Nav;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/android/nav/Nav;->toUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/taobao/android/nav/Nav;->skipPreprocess()Lcom/taobao/android/nav/Nav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/nav/Nav;->allowEscape()Lcom/taobao/android/nav/Nav;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/android/nav/Nav;->toUri(Landroid/net/Uri;)Z

    :cond_0
    return-void
.end method
