.class public abstract Lb/k/d/m;
.super Lb/k/d/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lb/k/d/i;"
    }
.end annotation


# instance fields
.field public final b:Landroid/app/Activity;

.field public final c:Landroid/content/Context;

.field public final d:Landroid/os/Handler;

.field public final e:Lb/k/d/p;


# direct methods
.method public constructor <init>(Lb/k/d/c;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1
    invoke-direct {p0}, Lb/k/d/i;-><init>()V

    new-instance v1, Lb/k/d/r;

    invoke-direct {v1}, Lb/k/d/r;-><init>()V

    iput-object v1, p0, Lb/k/d/m;->e:Lb/k/d/p;

    iput-object p1, p0, Lb/k/d/m;->b:Landroid/app/Activity;

    const-string v1, "context == null"

    invoke-static {p1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lb/k/d/m;->c:Landroid/content/Context;

    const-string p1, "handler == null"

    invoke-static {v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lb/k/d/m;->d:Landroid/os/Handler;

    return-void
.end method
