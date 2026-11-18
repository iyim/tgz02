.class public Lc/b/a/b/l/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/b/l/c;


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/b/i/i;)Z
    .locals 9

    const-string v0, "_time"

    invoke-virtual {p1, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    sget-object v3, Lc/b/a/b/k/a;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x3

    if-ltz v1, :cond_0

    .line 1
    iput v2, p1, Lc/b/a/b/i/i;->c:I

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v3, p0, Lc/b/a/b/l/d;->a:J

    iget-wide v5, p0, Lc/b/a/b/l/d;->b:J

    .line 3
    sget-object v1, Lc/b/a/b/k/a;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v1, v3, v7

    if-gez v1, :cond_1

    sget-object v1, Lc/b/a/b/k/a;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-lez v1, :cond_1

    const-wide/16 v7, 0x0

    cmp-long v1, v3, v7

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    .line 4
    iput v2, p1, Lc/b/a/b/i/i;->c:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p1, Lc/b/a/b/i/i;->c:I

    :goto_0
    const-string v0, "handle event:"

    .line 5
    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lc/b/a/b/i/i;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lc/b/a/b/l/d;

    invoke-static {p1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 p1, 0x1

    return p1
.end method
