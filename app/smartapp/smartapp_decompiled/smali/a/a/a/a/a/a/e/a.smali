.class public La/a/a/a/a/a/e/a;
.super Ljava/lang/Object;
.source "FifoLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La/a/a/a/a/a/e/a<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

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

.field public f:I

.field public g:La/a/a/a/a/a/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/a/a/e/b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "La/a/a/a/a/a/e/b<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a/e/a;->a(IF)V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, La/a/a/a/a/a/e/a;->l:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 2

    monitor-enter p0

    .line 14
    :try_start_0
    iget v0, p0, La/a/a/a/a/a/e/a;->a:I

    iget v1, p0, La/a/a/a/a/a/e/a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/e/a;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/a/a/a/a/a/e/b;

    if-eqz p1, :cond_2

    .line 52
    iget-boolean v0, p1, La/a/a/a/a/a/e/b;->g:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0, p1}, La/a/a/a/a/a/e/a;->b(La/a/a/a/a/a/e/b;)V

    .line 54
    invoke-virtual {p0, p1}, La/a/a/a/a/a/e/a;->a(La/a/a/a/a/a/e/b;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-boolean v0, p1, La/a/a/a/a/a/e/b;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/e/a;->g:La/a/a/a/a/a/e/b;

    if-eq v0, p1, :cond_1

    .line 56
    invoke-virtual {p1, v0}, La/a/a/a/a/a/e/b;->a(La/a/a/a/a/a/e/b;)V

    .line 57
    iput-object p1, p0, La/a/a/a/a/a/e/a;->g:La/a/a/a/a/a/e/b;

    .line 58
    :cond_1
    :goto_0
    iget v0, p1, La/a/a/a/a/a/e/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, La/a/a/a/a/a/e/b;->d:I

    .line 59
    iget v0, p0, La/a/a/a/a/a/e/a;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/a/a/e/a;->i:I

    goto :goto_1

    .line 61
    :cond_2
    iget v0, p0, La/a/a/a/a/a/e/a;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/a/a/e/a;->j:I

    .line 63
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 65
    iget v0, p0, La/a/a/a/a/a/e/a;->b:I

    invoke-virtual {p0, v0}, La/a/a/a/a/a/e/a;->b(I)V

    .line 66
    iget-object p1, p1, La/a/a/a/a/a/e/b;->b:Ljava/lang/Object;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 67
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(I)V
    .locals 3

    .line 24
    :goto_0
    monitor-enter p0

    .line 25
    :try_start_0
    iget v0, p0, La/a/a/a/a/a/e/a;->c:I

    if-gt v0, p1, :cond_0

    .line 26
    monitor-exit p0

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/e/a;->e:La/a/a/a/a/a/e/b;

    iget-object v0, v0, La/a/a/a/a/a/e/b;->e:La/a/a/a/a/a/e/b;

    if-eqz v0, :cond_1

    .line 35
    iget-object v1, p0, La/a/a/a/a/a/e/a;->l:Ljava/util/HashMap;

    iget-object v2, v0, La/a/a/a/a/a/e/b;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {p0, v0}, La/a/a/a/a/a/e/a;->b(La/a/a/a/a/a/e/b;)V

    .line 37
    iget v0, p0, La/a/a/a/a/a/e/a;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/a/a/e/a;->k:I

    .line 38
    monitor-exit p0

    goto :goto_0

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ele to be removed is null, FifoHead:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/a/a/a/a/e/a;->e:La/a/a/a/a/a/e/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", report:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p0}, La/a/a/a/a/a/e/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public a(IF)V
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_2

    .line 1
    monitor-enter p0

    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 2
    :try_start_0
    iput p2, p0, La/a/a/a/a/a/e/a;->b:I

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 4
    iput v0, p0, La/a/a/a/a/a/e/a;->b:I

    goto :goto_0

    :cond_0
    sub-int p2, p1, p2

    if-ge p2, v0, :cond_1

    add-int/lit8 p2, p1, -0x1

    .line 6
    iput p2, p0, La/a/a/a/a/a/e/a;->b:I

    .line 8
    :cond_1
    :goto_0
    iget p2, p0, La/a/a/a/a/a/e/a;->b:I

    sub-int/2addr p1, p2

    iput p1, p0, La/a/a/a/a/a/e/a;->a:I

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p0, p1}, La/a/a/a/a/a/e/a;->a(I)V

    .line 11
    iget p1, p0, La/a/a/a/a/a/e/a;->b:I

    invoke-virtual {p0, p1}, La/a/a/a/a/a/e/a;->b(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "FifoLruCache size parameters error"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(La/a/a/a/a/a/e/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/a/a/e/b<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 15
    iget-object v0, p0, La/a/a/a/a/a/e/a;->g:La/a/a/a/a/a/e/b;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p1, v0}, La/a/a/a/a/a/e/b;->a(La/a/a/a/a/a/e/b;)V

    goto :goto_0

    .line 18
    :cond_0
    iput-object p1, p1, La/a/a/a/a/a/e/b;->e:La/a/a/a/a/a/e/b;

    iput-object p1, p1, La/a/a/a/a/a/e/b;->f:La/a/a/a/a/a/e/b;

    :goto_0
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p1, La/a/a/a/a/a/e/b;->g:Z

    .line 21
    iput-object p1, p0, La/a/a/a/a/a/e/a;->g:La/a/a/a/a/a/e/b;

    .line 22
    iget v0, p0, La/a/a/a/a/a/e/a;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/a/a/e/a;->h:I

    .line 23
    iget v0, p0, La/a/a/a/a/a/e/a;->d:I

    iget p1, p1, La/a/a/a/a/a/e/b;->c:I

    add-int/2addr v0, p1

    iput v0, p0, La/a/a/a/a/a/e/a;->d:I

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 68
    new-instance v0, La/a/a/a/a/a/e/b;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, La/a/a/a/a/a/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 69
    iget p2, v0, La/a/a/a/a/a/e/b;->c:I

    iget v2, p0, La/a/a/a/a/a/e/a;->a:I

    if-le p2, v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 73
    :cond_0
    monitor-enter p0

    .line 74
    :try_start_0
    iget-object p2, p0, La/a/a/a/a/a/e/a;->l:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/a/a/a/a/a/e/b;

    if-eqz p1, :cond_1

    .line 76
    iget-boolean p2, p1, La/a/a/a/a/a/e/b;->g:Z

    if-nez p2, :cond_1

    .line 77
    invoke-virtual {p0, p1}, La/a/a/a/a/a/e/a;->c(La/a/a/a/a/a/e/b;)V

    .line 78
    invoke-virtual {p0, v0}, La/a/a/a/a/a/e/a;->a(La/a/a/a/a/a/e/b;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 82
    invoke-virtual {p0, p1}, La/a/a/a/a/a/e/a;->b(La/a/a/a/a/a/e/b;)V

    .line 83
    :cond_2
    iget-object p1, p0, La/a/a/a/a/a/e/a;->e:La/a/a/a/a/a/e/b;

    if-eqz p1, :cond_3

    .line 84
    invoke-virtual {v0, p1}, La/a/a/a/a/a/e/b;->a(La/a/a/a/a/a/e/b;)V

    goto :goto_0

    .line 86
    :cond_3
    iput-object v0, v0, La/a/a/a/a/a/e/b;->e:La/a/a/a/a/a/e/b;

    iput-object v0, v0, La/a/a/a/a/a/e/b;->f:La/a/a/a/a/a/e/b;

    .line 88
    :goto_0
    iput-boolean v1, v0, La/a/a/a/a/a/e/b;->g:Z

    .line 89
    iput-object v0, p0, La/a/a/a/a/a/e/a;->e:La/a/a/a/a/a/e/b;

    .line 90
    iget p1, p0, La/a/a/a/a/a/e/a;->f:I

    add-int/2addr p1, v1

    iput p1, p0, La/a/a/a/a/a/e/a;->f:I

    .line 91
    iget p1, p0, La/a/a/a/a/a/e/a;->c:I

    iget p2, v0, La/a/a/a/a/a/e/b;->c:I

    add-int/2addr p1, p2

    iput p1, p0, La/a/a/a/a/a/e/a;->c:I

    .line 92
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget p1, p0, La/a/a/a/a/a/e/a;->a:I

    invoke-virtual {p0, p1}, La/a/a/a/a/a/e/a;->a(I)V

    .line 99
    iget p1, p0, La/a/a/a/a/a/e/a;->b:I

    invoke-virtual {p0, p1}, La/a/a/a/a/a/e/a;->b(I)V

    return v1

    :catchall_0
    move-exception p1

    .line 100
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    monitor-enter p0

    const/16 v0, 0xa

    .line 34
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, La/a/a/a/a/a/e/a;->c:I

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, La/a/a/a/a/a/e/a;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, La/a/a/a/a/a/e/a;->c:I

    iget v2, p0, La/a/a/a/a/a/e/a;->d:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, La/a/a/a/a/a/e/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, La/a/a/a/a/a/e/a;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, La/a/a/a/a/a/e/a;->h:I

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, La/a/a/a/a/a/e/a;->l:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, La/a/a/a/a/a/e/a;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, La/a/a/a/a/a/e/a;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, La/a/a/a/a/a/e/a;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "[FifoLruCache] (%d + %d)%d/%d, count:(%d + %d)%d, hits:%d, misses:%d, evicts:%d"

    .line 38
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(I)V
    .locals 3

    .line 12
    :goto_0
    monitor-enter p0

    .line 13
    :try_start_0
    iget v0, p0, La/a/a/a/a/a/e/a;->d:I

    if-gt v0, p1, :cond_0

    .line 14
    monitor-exit p0

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/e/a;->g:La/a/a/a/a/a/e/b;

    iget-object v0, v0, La/a/a/a/a/a/e/b;->e:La/a/a/a/a/a/e/b;

    if-eqz v0, :cond_1

    .line 22
    iget-object v1, p0, La/a/a/a/a/a/e/a;->l:Ljava/util/HashMap;

    iget-object v2, v0, La/a/a/a/a/a/e/b;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {p0, v0}, La/a/a/a/a/a/e/a;->c(La/a/a/a/a/a/e/b;)V

    .line 24
    iget v0, p0, La/a/a/a/a/a/e/a;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/a/a/e/a;->k:I

    .line 25
    monitor-exit p0

    goto :goto_0

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ele to be removed is null, LruHead:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/a/a/a/a/e/a;->g:La/a/a/a/a/a/e/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", report:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, La/a/a/a/a/a/e/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final b(La/a/a/a/a/a/e/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/a/a/e/b<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, La/a/a/a/a/a/e/a;->e:La/a/a/a/a/a/e/b;

    if-ne p1, v0, :cond_1

    .line 2
    iget-object v1, v0, La/a/a/a/a/a/e/b;->f:La/a/a/a/a/a/e/b;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, La/a/a/a/a/a/e/a;->e:La/a/a/a/a/a/e/b;

    goto :goto_0

    .line 5
    :cond_0
    iput-object v1, p0, La/a/a/a/a/a/e/a;->e:La/a/a/a/a/a/e/b;

    .line 8
    :cond_1
    :goto_0
    iget v0, p0, La/a/a/a/a/a/e/a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/a/a/a/a/a/e/a;->f:I

    .line 9
    iget v0, p0, La/a/a/a/a/a/e/a;->c:I

    iget v1, p1, La/a/a/a/a/a/e/b;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/a/e/a;->c:I

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p1, La/a/a/a/a/a/e/b;->g:Z

    .line 11
    invoke-virtual {p1}, La/a/a/a/a/a/e/b;->a()V

    :cond_2
    return-void
.end method

.method public final c(La/a/a/a/a/a/e/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/a/a/e/b<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, La/a/a/a/a/a/e/a;->g:La/a/a/a/a/a/e/b;

    if-ne p1, v0, :cond_1

    .line 2
    iget-object v1, v0, La/a/a/a/a/a/e/b;->f:La/a/a/a/a/a/e/b;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, La/a/a/a/a/a/e/a;->g:La/a/a/a/a/a/e/b;

    goto :goto_0

    .line 5
    :cond_0
    iput-object v1, p0, La/a/a/a/a/a/e/a;->g:La/a/a/a/a/a/e/b;

    .line 8
    :cond_1
    :goto_0
    iget v0, p0, La/a/a/a/a/a/e/a;->h:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/a/e/a;->h:I

    .line 9
    iget v0, p0, La/a/a/a/a/a/e/a;->d:I

    iget v2, p1, La/a/a/a/a/a/e/b;->c:I

    sub-int/2addr v0, v2

    iput v0, p0, La/a/a/a/a/a/e/a;->d:I

    .line 10
    iput-boolean v1, p1, La/a/a/a/a/a/e/b;->g:Z

    .line 11
    invoke-virtual {p1}, La/a/a/a/a/a/e/b;->a()V

    :cond_2
    return-void
.end method
