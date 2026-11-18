.class public final Lc/b/a/b/n/c$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/b/n/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0x1388

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lc/b/a/b/n/c;->b()V

    .line 1
    sput v4, Lc/b/a/b/n/c;->g:I

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {}, Lc/b/a/b/n/c;->b()V

    .line 3
    sget-object p1, Lc/b/a/b/n/c;->h:Landroid/os/Handler;

    .line 4
    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 5
    :cond_2
    sget-object p1, Lc/b/a/b/n/c;->f:[Ljava/lang/String;

    if-nez p1, :cond_3

    .line 6
    invoke-static {}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a()[Ljava/lang/String;

    move-result-object p1

    .line 7
    sput-object p1, Lc/b/a/b/n/c;->f:[Ljava/lang/String;

    .line 8
    :cond_3
    sget p1, Lc/b/a/b/n/c;->g:I

    if-ne p1, v4, :cond_4

    .line 9
    sput v3, Lc/b/a/b/n/c;->g:I

    .line 10
    invoke-static {}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a()[Ljava/lang/String;

    move-result-object p1

    .line 11
    sput-object p1, Lc/b/a/b/n/c;->e:[Ljava/lang/String;

    .line 12
    sget-object p1, Lc/b/a/b/n/c;->h:Landroid/os/Handler;

    .line 13
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 14
    :cond_4
    sget-object p1, Lc/b/a/b/n/c;->h:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    .line 15
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
