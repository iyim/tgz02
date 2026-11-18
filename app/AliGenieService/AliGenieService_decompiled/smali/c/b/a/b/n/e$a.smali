.class public Lc/b/a/b/n/e$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/b/n/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field public final b:Landroid/os/Debug$MemoryInfo;


# direct methods
.method public constructor <init>(Lc/b/a/b/n/e;Landroid/app/ActivityManager$RunningAppProcessInfo;Landroid/os/Debug$MemoryInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc/b/a/b/n/e$a;->a:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iput-object p3, p0, Lc/b/a/b/n/e$a;->b:Landroid/os/Debug$MemoryInfo;

    return-void
.end method
