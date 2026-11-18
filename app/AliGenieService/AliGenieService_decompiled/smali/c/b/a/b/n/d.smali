.class public Lc/b/a/b/n/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lc/b/a/b/n/e$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/b/a/b/n/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lc/b/a/b/n/e$a;

    check-cast p2, Lc/b/a/b/n/e$a;

    .line 1
    iget-object v0, p1, Lc/b/a/b/n/e$a;->b:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    iget-object v1, p2, Lc/b/a/b/n/e$a;->b:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lc/b/a/b/n/e$a;->b:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result p1

    iget-object p2, p2, Lc/b/a/b/n/e$a;->b:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {p2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result p2

    if-le p1, p2, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
