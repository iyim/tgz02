.class public final Lc/e/a/f$a;
.super Ljava/io/OutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:J

.field public final c:Ljava/io/OutputStream;

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(JLjava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/e/a/f$a;->d:I

    iput v0, p0, Lc/e/a/f$a;->e:I

    iput-boolean v0, p0, Lc/e/a/f$a;->f:Z

    iput-wide p1, p0, Lc/e/a/f$a;->b:J

    iput-object p3, p0, Lc/e/a/f$a;->c:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 5

    iget v0, p0, Lc/e/a/f$a;->e:I

    add-int/2addr v0, p3

    iput v0, p0, Lc/e/a/f$a;->e:I

    iget-boolean v0, p0, Lc/e/a/f$a;->f:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v0, v0, Lc/e/a/g/b;->y:I

    if-lez v0, :cond_1

    .line 2
    iget v1, p0, Lc/e/a/f$a;->d:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, p3

    :goto_0
    iget v1, p0, Lc/e/a/f$a;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lc/e/a/f$a;->d:I

    iget-wide v1, p0, Lc/e/a/f$a;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v1}, Lc/e/a/f$a;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lc/e/a/f$a;->c:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    :goto_1
    if-ge v0, p3, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/e/a/f$a;->f:Z

    :cond_3
    return v0
.end method

.method public final a()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lc/e/a/f$a;->e:I

    iget v2, p0, Lc/e/a/f$a;->d:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Lc/e/a/f$a;->a(Ljava/lang/String;)V

    const-string v1, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    invoke-virtual {p0, v1}, Lc/e/a/f$a;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    sget-object v1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v1, v1, Lc/e/a/g/b;->y:I

    .line 4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Full: %d bytes, write: %d bytes, limit: %d bytes, reject: %d bytes.\n"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lc/e/a/f$a;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    iget v6, p0, Lc/e/a/f$a;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x3

    iget v5, p0, Lc/e/a/f$a;->e:I

    iget v6, p0, Lc/e/a/f$a;->d:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc/e/a/f$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {v1, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 6
    sget-boolean v0, Lc/e/a/f;->g:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lc/e/a/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DEBUG"

    .line 8
    invoke-static {v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Lc/e/a/f$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lc/e/a/f$a;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lc/e/a/f$a;->c:Ljava/io/OutputStream;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lc/e/a/f$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeClientWriteData(JLjava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final write(I)V
    .locals 8

    .line 1
    sget-boolean v0, Lc/e/a/f;->g:Z

    const/4 v1, 0x0

    const-string v2, "%c"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lc/e/a/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "DEBUG"

    invoke-static {v4, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-wide v4, p0, Lc/e/a/f$a;->b:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/e/a/f$a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/e/a/f$a;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    iget p1, p0, Lc/e/a/f$a;->d:I

    add-int/2addr p1, v3

    iput p1, p0, Lc/e/a/f$a;->d:I

    iget p1, p0, Lc/e/a/f$a;->e:I

    add-int/2addr p1, v3

    iput p1, p0, Lc/e/a/f$a;->e:I

    return-void
.end method

.method public final write([B)V
    .locals 3

    .line 4
    sget-boolean v0, Lc/e/a/f;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lc/e/a/f;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-byte v0, p1, v1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string v2, "DEBUG"

    invoke-static {v2, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lc/e/a/f$a;->a([BII)I

    return-void
.end method

.method public final write([BII)V
    .locals 3

    .line 7
    sget-boolean v0, Lc/e/a/f;->g:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lc/e/a/f;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    aget-byte v1, v0, v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "DEBUG"

    invoke-static {v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lc/e/a/f$a;->a([BII)I

    return-void
.end method
