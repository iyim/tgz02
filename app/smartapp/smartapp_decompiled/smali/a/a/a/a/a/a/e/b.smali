.class public La/a/a/a/a/a/e/b;
.super Ljava/lang/Object;
.source "LruNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:La/a/a/a/a/a/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/a/a/e/b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public f:La/a/a/a/a/a/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/a/a/e/b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, La/a/a/a/a/a/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 17
    iget-object v0, p0, La/a/a/a/a/a/e/b;->f:La/a/a/a/a/a/e/b;

    if-eqz v0, :cond_0

    .line 18
    iget-object v1, p0, La/a/a/a/a/a/e/b;->e:La/a/a/a/a/a/e/b;

    iput-object v1, v0, La/a/a/a/a/a/e/b;->e:La/a/a/a/a/a/e/b;

    .line 20
    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/e/b;->e:La/a/a/a/a/a/e/b;

    if-eqz v0, :cond_1

    .line 21
    iget-object v1, p0, La/a/a/a/a/a/e/b;->f:La/a/a/a/a/a/e/b;

    iput-object v1, v0, La/a/a/a/a/a/e/b;->f:La/a/a/a/a/a/e/b;

    :cond_1
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, La/a/a/a/a/a/e/b;->e:La/a/a/a/a/a/e/b;

    .line 24
    iput-object v0, p0, La/a/a/a/a/a/e/b;->f:La/a/a/a/a/a/e/b;

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, La/a/a/a/a/a/e/b;->h:Z

    return-void
.end method

.method public a(La/a/a/a/a/a/e/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/a/a/e/b<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/a/a/a/a/a/e/b;->e:La/a/a/a/a/a/e/b;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2
    iget-object v1, p0, La/a/a/a/a/a/e/b;->f:La/a/a/a/a/a/e/b;

    iput-object v1, v0, La/a/a/a/a/a/e/b;->f:La/a/a/a/a/a/e/b;

    .line 4
    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/e/b;->f:La/a/a/a/a/a/e/b;

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 5
    iget-object v1, p0, La/a/a/a/a/a/e/b;->e:La/a/a/a/a/a/e/b;

    iput-object v1, v0, La/a/a/a/a/a/e/b;->e:La/a/a/a/a/a/e/b;

    .line 7
    :cond_1
    iput-object p1, p0, La/a/a/a/a/a/e/b;->f:La/a/a/a/a/a/e/b;

    .line 8
    iget-object v0, p1, La/a/a/a/a/a/e/b;->e:La/a/a/a/a/a/e/b;

    if-eqz v0, :cond_2

    .line 9
    iput-object p0, v0, La/a/a/a/a/a/e/b;->f:La/a/a/a/a/a/e/b;

    .line 11
    :cond_2
    iget-object v0, p1, La/a/a/a/a/a/e/b;->e:La/a/a/a/a/a/e/b;

    iput-object v0, p0, La/a/a/a/a/a/e/b;->e:La/a/a/a/a/a/e/b;

    .line 12
    iput-object p0, p1, La/a/a/a/a/a/e/b;->e:La/a/a/a/a/a/e/b;

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)V"
        }
    .end annotation

    .line 13
    iput-object p1, p0, La/a/a/a/a/a/e/b;->a:Ljava/lang/Object;

    .line 14
    iput-object p2, p0, La/a/a/a/a/a/e/b;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 15
    iput p1, p0, La/a/a/a/a/a/e/b;->d:I

    .line 16
    iput p3, p0, La/a/a/a/a/a/e/b;->c:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LruNode@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "[key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/a/a/a/a/e/b;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/a/a/a/a/e/b;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", visitCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/a/a/a/a/e/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/a/a/a/a/e/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isColdNode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, La/a/a/a/a/a/e/b;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", unlinked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, La/a/a/a/a/a/e/b;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
