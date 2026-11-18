.class public Lb/s/p$b;
.super Lb/s/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/s/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lb/s/p;


# direct methods
.method public constructor <init>(Lb/s/p;)V
    .locals 0

    invoke-direct {p0}, Lb/s/m;-><init>()V

    iput-object p1, p0, Lb/s/p$b;->a:Lb/s/p;

    return-void
.end method


# virtual methods
.method public a(Lb/s/j;)V
    .locals 1

    iget-object p1, p0, Lb/s/p$b;->a:Lb/s/p;

    iget-boolean v0, p1, Lb/s/p;->M:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lb/s/j;->f()V

    iget-object p1, p0, Lb/s/p$b;->a:Lb/s/p;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lb/s/p;->M:Z

    :cond_0
    return-void
.end method

.method public c(Lb/s/j;)V
    .locals 2

    iget-object v0, p0, Lb/s/p$b;->a:Lb/s/p;

    iget v1, v0, Lb/s/p;->L:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lb/s/p;->L:I

    iget v1, v0, Lb/s/p;->L:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lb/s/p;->M:Z

    invoke-virtual {v0}, Lb/s/j;->b()V

    :cond_0
    invoke-virtual {p1, p0}, Lb/s/j;->b(Lb/s/j$d;)Lb/s/j;

    return-void
.end method
