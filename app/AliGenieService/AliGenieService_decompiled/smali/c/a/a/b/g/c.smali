.class public Lc/a/a/b/g/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/a/a/b/g/b;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Lc/a/a/b/i/d;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc/a/a/b/i/d;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/a/a/b/g/c;->b:Ljava/util/List;

    iput-object p1, p0, Lc/a/a/b/g/c;->d:Lc/a/a/b/i/d;

    iput-object p2, p0, Lc/a/a/b/g/c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc/a/a/b/g/c;->d:Lc/a/a/b/i/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lc/a/a/b/g/c;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lc/a/a/b/i/d;->b(Ljava/lang/String;)Landroid/os/IBinder;

    :cond_0
    return-void
.end method
