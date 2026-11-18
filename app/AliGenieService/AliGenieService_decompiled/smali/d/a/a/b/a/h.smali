.class public Ld/a/a/b/a/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public b:Z

.field public c:[B

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/a/a/b/a/h;->b:Z

    iput v0, p0, Ld/a/a/b/a/h;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/a/a/b/a/h;->e:Z

    iput-boolean v0, p0, Ld/a/a/b/a/h;->f:Z

    invoke-virtual {p0, p1}, Ld/a/a/b/a/h;->a([B)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    invoke-virtual {p0}, Ld/a/a/b/a/h;->e()V

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Ld/a/a/b/a/h;->d:I

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Ld/a/a/b/a/h;->f:Z

    return-void
.end method

.method public a([B)V
    .locals 0

    invoke-virtual {p0}, Ld/a/a/b/a/h;->e()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Ld/a/a/b/a/h;->c:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public b(Z)V
    .locals 0

    invoke-virtual {p0}, Ld/a/a/b/a/h;->e()V

    iput-boolean p1, p0, Ld/a/a/b/a/h;->e:Z

    return-void
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Ld/a/a/b/a/h;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, Ld/a/a/b/a/h;->c:[B

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Ld/a/a/b/a/h;->d:I

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Ld/a/a/b/a/h;->f:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Ld/a/a/b/a/h;->e:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ld/a/a/b/a/h;->c:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
