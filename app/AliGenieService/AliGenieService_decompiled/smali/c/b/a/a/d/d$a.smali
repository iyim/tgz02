.class public Lc/b/a/a/d/d$a;
.super Lc/b/a/a/d/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/a/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc/b/a/a/d/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lc/b/a/a/d/d<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/a/d/d;Lc/b/a/a/d/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/d<",
            "TT;>;",
            "Lc/b/a/a/d/d<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lc/b/a/a/d/d;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc/b/a/a/d/d$a;->a:Ljava/util/LinkedList;

    iget-object v0, p0, Lc/b/a/a/d/d$a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lc/b/a/a/d/d$a;->a:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/a/d/d;)Lc/b/a/a/d/d;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/d$a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method
